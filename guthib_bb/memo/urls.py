from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='memo_home'),
    path('about/', views.about, name='memo_about')
]