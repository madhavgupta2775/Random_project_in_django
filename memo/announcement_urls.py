from django.urls import path
from django.contrib.auth.decorators import login_required
from .views import AnnouncementListView, AnnouncementCreateView
from . import views

urlpatterns = [
    path('', login_required(AnnouncementListView.as_view()), name='announcement_home'),
    path('post/new/', AnnouncementCreateView.as_view(), name='announcement-create'),
    path('post/<int:pk>/', login_required(views.PostDetailView.as_view()), name='announcement-detail'),
    path('archived/', login_required(views.ArchivedAnnouncementListView.as_view()), name='archived-announcement'),
]