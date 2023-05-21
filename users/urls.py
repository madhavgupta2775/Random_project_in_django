from django.urls import path
from . import views
from .models import User

urlpatterns = [
    path('<int:pk>/profile_update/', views.profile_update, name='profile_update'),
    path('<int:pk>/profile/', views.profile, name="profile"),
    path('additional-info/', views.complete_additional_info, name='additional_info'),
]




