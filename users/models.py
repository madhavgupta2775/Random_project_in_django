from django.db import models
from django.contrib.auth.models import User
from PIL import Image
from django.urls import reverse


# Create your models here.

class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    image = models.ImageField(default='default.jpg', upload_to='profile_pics')
    # show_email = models.BooleanField(default=True)
    bio = models.TextField(blank=True, null=True)

    def __str__(self):
        return f'{self.user.username} Profile'
    
    def save(self, *args, **kwargs):
        super().save(*args, **kwargs)

        img = Image.open(self.image.path)

        if img.height > 300 or img.width > 300:
            output_size = (300, 300)
            img.thumbnail(output_size)
            img.save(self.image.path)
    
    def get_absolute_url(self):
        # return reverse('profile_update', kwargs={'pk':self.pk})
        return reverse('profile', kwargs={'pk':self.pk})
    
class UserPreferences(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, related_name='preferences')
    show_email = models.BooleanField(default=True)
    theme_color = models.CharField(max_length=20, null=True, blank=True, default='default')
    
    def __str__(self):
        return f'{self.user.username} Preferences'