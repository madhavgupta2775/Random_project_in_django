from typing import Optional
from django.shortcuts import render, redirect
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from django.db import models
from django.db.models import Q
from .models import Post
from django.http import HttpResponse, JsonResponse
from django.views.decorators.http import require_POST
from .forms import PostUpdateForm, PostCreateForm, CommentCreateForm
from django.contrib import messages

# Create your views here.


def home(request):
    context = {
        'posts': Post.objects.all()
    }
    return render(request, 'memo/home.html', context)


class PostListView(ListView):
    model = Post
    template_name = 'memo/home.html' # <app>/<model>_<viewtype>.html
    context_object_name = 'posts'
    ordering = ['date_due']
    paginate_by = 5
    def get_queryset(self, archived=False):
        queryset = super().get_queryset().filter(is_archived=archived)
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

    def get_queryset(self):
        queryset = super().get_queryset(True)
        user = self.request.user
        # print(queryset)
        if user.is_superuser:
            return queryset # Superusers can see all memos
        return queryset.filter(models.Q(private=False) | models.Q(author=user))

class PostDetailView(DetailView):
    model = Post


class PostCreateView(LoginRequiredMixin, CreateView):
    model = Post
    form_class = PostCreateForm
    # fields = ['title', 'content', 'date_due', 'private']


    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)


class PostUpdateView(LoginRequiredMixin, UserPassesTestMixin, UpdateView):
    model = Post
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
        form = CommentCreateForm(request.POST)
        if form.is_valid():
            comment = form.save(commit=False)
            comment.author = request.user
            comment.save()
            messages.success(request, f'Comment has been added successfully.')

            # Prepare the data to be returned in the JSON response
            data = {
                'content': comment.content,
                'author': comment.author.username,
                'date_posted': comment.date_posted.strftime('%Y-%m-%d %H:%M:%S'),
                'memo': comment.memo.pk,
            }
            
            return JsonResponse(data)
        else:
            # Handle form validation errors
            errors = form.errors.as_json()
            return JsonResponse({'error': errors}, status=400)
    
    return redirect('post_detail', pk=comment.memo.pk)  # Redirect to the memo detail page