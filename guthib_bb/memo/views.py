from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.

posts = [
    {
        'title': 'First memo',
        'content': 'first memo content',
        'date_posted': 'March 8, 2023',
        'date_due': 'March 12, 2023'
    },
    {
        'title': 'sec memo',
        'content': 'sec memo content',
        'date_posted': 'March 9, 2023',
        'date_due': 'March 13, 2023'
    }
]

def home(request):
    context = {
        'posts': posts
    }
    return render(request, 'memo/home.html', context)

def about(request):
    return render(request, 'memo/about.html', {'title': 'About'})