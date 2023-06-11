from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from .models import Profile, UserPreferences


class UserRegisterForm(UserCreationForm):
    email = forms.EmailField()

    class Meta:
        model = User
        fields = ['username', 'email', 'password1', 'password2']


class UserUpdateForm(forms.ModelForm):
    email = forms.EmailField()

    class Meta:
        model = User
        fields = ['username', 'email']

class ProfileUpdateForm(forms.ModelForm):
    class Meta:
        model = Profile
        fields = ['image', 'bio', 'show_email']

class PreferencesUpdateForm(forms.ModelForm):
    theme_color = forms.CharField(max_length=20, required=True, label="Theme Color ([H, S, L] (e.g. [0, 50, 50]) or random/default)")
    class Meta:
        model = UserPreferences
        fields = ['show_email', 'theme_color']
