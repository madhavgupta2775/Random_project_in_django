from typing import Any, Dict, List, Optional
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from django.db import models
from django.db.models import Q
from .models import Post, Comment
from django.http import HttpResponse, JsonResponse
from django.contrib.auth.decorators import user_passes_test
from django.views.decorators.http import require_POST, require_http_methods
from .forms import PostUpdateForm, MemoCreateForm, CommentForm, AnnouncementCreateForm, AnnouncementUpdateForm
from django.contrib import messages

# Create your views here.


def home(request):
    context = {
        'posts': Post.objects.all()
    }
    return render(request, 'memo/memo_home.html', context)


class PostListView(ListView):
    model = Post
    template_name = 'memo/memo_home.html' # <app>/<model>_<viewtype>.html
    context_object_name = 'posts'
    ordering = ['date_due']
    paginate_by = 5
    def get_queryset(self, archived=False, announcement=False):
        queryset = super().get_queryset().filter(is_archived=archived, is_announcement=announcement)
        user = self.request.user

        if user.is_superuser:
            return queryset # Superusers can see all memos

        return queryset.filter(models.Q(private=False) | models.Q(author=user))
    
class AnnouncementListView(PostListView):
    ordering = ['-date_posted']
    template_name = 'memo/announcement_home.html'
    def get_queryset(self):
        queryset = super().get_queryset(False, True)
        user = self.request.user
        if user.is_superuser:
            return queryset # Superusers can see all memos
        return queryset.filter(models.Q(private=False) | models.Q(author=user))
    
    

class UserMemosView(PostListView):
    def get_queryset(self):
        queryset = super().get_queryset()
        user_pk = self.kwargs['pk']
        if self.request.user.is_superuser or self.request.user.pk == user_pk:
            return queryset.filter(author__pk=user_pk)
        return queryset.filter(models.Q(private=False) & models.Q(author__pk=user_pk))
    
    # def get_context_data(self, **kwargs):
    #     context = super().get_context_data(**kwargs)
    #     user_pk = self.kwargs['pk']
    #     if self.request.user.is_superuser or self.request.user.pk == user_pk:
    #         memos_count = Post.objects.filter(author__pk=user_pk).count()
    #     else:
    #         memos_count = Post.objects.filter(author__pk=user_pk, private=False).count()
    #     context['memos_count'] = memos_count
    #     return context
        
    
class ArchivedPostListView(PostListView):
    # template_name = 'memo/archived_memos.html'
    ordering = ['-date_due']
    def get_queryset(self):
        queryset = super().get_queryset(True, False)
        user = self.request.user
        # print(queryset)
        if user.is_superuser:
            return queryset # Superusers can see all memos
        return queryset.filter(models.Q(private=False) | models.Q(author=user))
    
class ArchivedAnnouncementListView(PostListView):
    ordering = ['-date_posted']
    def get_queryset(self):
        queryset = super().get_queryset(True, True)
        user = self.request.user
        if user.is_superuser:
            return queryset # Superusers can see all memos
        return queryset.filter(models.Q(private=False) | models.Q(author=user))

class PostDetailView(DetailView):
    
    def get_template_names(self):
        if self.object.is_announcement:
            return ['memo/announcement_detail.html']
        else:
            return ['memo/post_detail.html']

    model = Post
    def get_context_data(self, **kwargs: Any) -> Dict[str, Any]:
        context = super().get_context_data(**kwargs)
        context['comments'] = self.object.comments.all().order_by('-date_posted')
        return context


class MemoCreateView(LoginRequiredMixin, CreateView):
    model = Post
    form_class = MemoCreateForm
    # fields = ['title', 'content', 'date_due', 'private']


    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)

    
class AnnouncementCreateView(LoginRequiredMixin, UserPassesTestMixin, CreateView):
    model = Post
    form_class = AnnouncementCreateForm
    # fields = ['title', 'content', 'private']

    def test_func(self):
        return self.request.user.is_superuser

    def form_valid(self, form):
        form.instance.author = self.request.user
        form.instance.is_announcement = True
        return super().form_valid(form)


class PostUpdateView(LoginRequiredMixin, UserPassesTestMixin, UpdateView):
    model = Post
    if model.is_announcement:
        form_class = AnnouncementUpdateForm
    else:
        form_class = PostUpdateForm
    # fields = ['title', 'content', 'date_due', 'private', 'is_archived']

    def form_valid(self, form):
        # form.instance.author = self.request.user
        return super().form_valid(form)

    def test_func(self):
        post = self.get_object()
        if self.request.user == post.author or self.request.user.is_superuser:
            return True
        return False


class PostDeleteView(LoginRequiredMixin, UserPassesTestMixin, DeleteView):
    model = Post
    if model.is_announcement:
        success_url = '/announcement/'
    else:
        success_url = '/memo/'
    def test_func(self):
        post = self.get_object()
        if self.request.user == post.author or self.request.user.is_superuser:
            return True
        return False


def about(request):
    return render(request, 'memo/about.html', {'title': 'About'})

@require_POST
def create_comment(request):
    if request.method == 'POST':
        form = CommentForm(request.POST)
        if form.is_valid():
            comment = form.save(commit=False)
            comment.author = request.user
            comment.save()
            # print(comment.memo.is_announcement)
            # Prepare the data to be returned in the JSON response
            data = {
                'content': comment.content,
                'id': comment.pk,
                'date_posted': comment.date_posted.strftime('%Y-%m-%d %H:%M:%S'),
                'memo': comment.memo.pk,
            }
            
            return JsonResponse(data)
        else:
            # Handle form validation errors
            errors = form.errors.as_json()
            return JsonResponse({'error': errors}, status=400)
    if comment.memo.is_announcement:
        # print("announcement")
        return redirect('announcement_detail', pk=comment.memo.pk)
    return redirect('post_detail', pk=comment.memo.pk)  # Redirect to the memo detail page

@require_http_methods(['DELETE'])
def delete_comment(request, pk):
    comment = get_object_or_404(Comment, id=pk)
    pk = comment.memo.pk
    is_announcement = comment.memo.is_announcement
    if request.user == comment.author or request.user.is_superuser:
        if request.method == 'DELETE':
            comment.delete()
            messages.success(request, 'Comment has been deleted successfully.')
        else:
            messages.error(request, 'Invalid request method.')
    else:
        messages.error(request, 'You are not allowed to delete this comment.')
    if(is_announcement):
        return redirect('announcement-detail', pk=pk)
    return redirect('post-detail', pk=pk)

def update_comment(request):
    if request.method == 'POST':
        comment = get_object_or_404(Comment, pk=int(request.POST.get('comment_id')))
        if request.user == comment.author or request.user.is_superuser:
            form = CommentForm(request.POST, instance=comment)
            if form.is_valid():
                form.save()
                # Prepare the data to be returned in the JSON response
                data = {
                    'id': comment.pk,
                    'content': comment.content,
                    'date_posted': comment.date_posted.strftime('%Y-%m-%d %H:%M:%S'),
                    'memo': comment.memo.pk,
                }
                # messages.success(request, 'Comment has been updated successfully.')
                return JsonResponse(data)
            else:
                # Handle form validation errors
                errors = form.errors.as_json()
                return JsonResponse({'error': errors}, status=400)
    if(comment.memo.is_announcement):
        return redirect('announcement_detail', pk=comment.memo.pk)
    return redirect('post_detail', pk=comment.memo.pk)  # Redirect to the memo detail page