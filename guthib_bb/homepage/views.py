from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.

def index(request):
    return render(request, 'homepage/home.html', {'title': 'HOME'})

def about(request):
    return render(request, 'homepage/about.html', {'title': 'ABOUT'})