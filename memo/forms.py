from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from .models import Post, Comment


class PostUpdateForm(forms.ModelForm):
    is_archived = forms.BooleanField(label="Mark as Archived", required=False)
    date_due = forms.DateTimeField(label="Due Date", widget=forms.DateTimeInput(attrs={'type': 'datetime-local'}))
    class Meta:
        model = Post
        fields = ['title', 'content', 'date_due', 'private', 'is_archived']

class PostCreateForm(forms.ModelForm):
    date_due = forms.DateTimeField(label="Due Date", widget=forms.DateTimeInput(attrs={'type': 'datetime-local'}))
    class Meta:
        model = Post
        fields = ['title', 'content', 'date_due', 'private']

class CommentCreateForm(forms.ModelForm):
    class Meta:
        model = Comment
        fields = ['content']
