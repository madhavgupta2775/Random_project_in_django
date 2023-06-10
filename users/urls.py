from django.urls import path
from . import views
from memo.views import UserMemosView
from .models import User

urlpatterns = [
    path('<int:pk>/profile_update/', views.profile_update, name='profile_update'),
    path('<int:pk>/profile/', views.profile, name="profile"),
    path('<int:pk>/memos/', UserMemosView.as_view(), name='user_memos'),
]




