from django.urls import path
from django.contrib.auth.decorators import login_required
from .views import PostListView, PostDetailView, PostCreateView, PostUpdateView, PostDeleteView, ArchivedPostListView
from . import views

urlpatterns = [
    path('', login_required(PostListView.as_view()), name='memo_home'),
    path('archived/', ArchivedPostListView.as_view(), name='archived-memo'),
    path('post/<int:pk>/', login_required(PostDetailView.as_view()), name='post-detail'),
    path('post/new/', PostCreateView.as_view(), name='post-create'),
    path('post/<int:pk>/update/', PostUpdateView.as_view(), name='post-update'),
    path('post/<int:pk>/delete/', PostDeleteView.as_view(), name='post-delete'),
    path('about/', views.about, name='memo_about'),
]