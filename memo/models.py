from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from django.urls import reverse

# Create your models here.

class Post(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField()
    date_posted = models.DateTimeField(default=timezone.now)
    date_due = models.DateTimeField()
    author = models.ForeignKey(User, on_delete=models.CASCADE)
    private = models.BooleanField(default=False)
    is_archived = models.BooleanField(default=False)
    # is_announcement = models.BooleanField(default=False)
    # comments = models.ForeignKey(Comment)

    def __str__(self):
        return self.title
    
    def get_absolute_url(self):
        return reverse('post-detail', kwargs={'pk':self.pk})
    
class Comment(models.Model):
    content = models.TextField()
    date_posted = models.DateTimeField(default=timezone.now)
    author = models.ForeignKey(User, on_delete=models.CASCADE)
    memo = models.ForeignKey(Post, on_delete=models.CASCADE, related_name='comments')

