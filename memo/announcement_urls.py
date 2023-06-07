from django.urls import path
from django.contrib.auth.decorators import login_required
from .views import AnnouncementListView, AnnouncementCreateView
from . import views

urlpatterns = [
    path('', login_required(AnnouncementListView.as_view()), name='announcement_home'),
    path('post/new/', AnnouncementCreateView.as_view(), name='announcement-create'),
]