from django.shortcuts import render
from .models import Post
from django.http import HttpResponse

# Create your views here.


def home(request):
    context = {
        'posts': Post.objects.all()
    }
    return render(request, 'memo/home.html', context)

def about(request):
    return render(request, 'memo/about.html', {'title': 'About'})