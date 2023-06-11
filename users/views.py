from django.shortcuts import render, redirect
from django.contrib.auth import login
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from .forms import UserRegisterForm, UserUpdateForm, ProfileUpdateForm, PreferencesUpdateForm
from .models import User, Profile
# from memo.views import UserMemosView
from django.core.exceptions import PermissionDenied
from allauth.socialaccount.models import SocialAccount


# Create your views here.

def register(request):
    if request.method == 'POST':
        form = UserRegisterForm(request.POST)
        if form.is_valid():
            username = form.cleaned_data.get('username')
            messages.success(request, f'Your account has been created! You are now able to log in.')
            form.save()
            return redirect('login')
    else:
        form = UserRegisterForm()
    return render(request, 'users/register.html', {'form': form})


@login_required
def profile_update(request, pk):
    profile = Profile.objects.get(pk=pk)
    user = profile.user

    if not request.user.is_superuser and user != request.user:
        raise PermissionDenied

    if request.method == 'POST':
        u_form = UserUpdateForm(request.POST, instance=user)
        p_form = ProfileUpdateForm(request.POST, request.FILES, instance=profile)

        if u_form.is_valid() and p_form.is_valid():
            u_form.save()
            p_form.save()
            messages.success(request, f'Account has been updated!')
            return redirect('profile', pk=pk)
    else:
        u_form = UserUpdateForm(instance=user)
        p_form = ProfileUpdateForm(instance=user.profile)

    context = {
        'u_form': u_form,
        'p_form': p_form,
        'user': user
    }
    return render(request, 'users/profile_update.html', context)

def profile(request, pk):
    profile = Profile.objects.get(pk=pk)
    user = profile.user
    # memos_count = UserMemosView.get_context_data(user).get('memos_count')
    if request.user.is_superuser or user == request.user:
        update_allow = True
    else:
        update_allow = False

    context = {
        'user': user,
        'update_allow': update_allow,
        # 'memos_count': memos_count
    }
    return render(request, 'users/profile.html', context)

def preferences(request, pk):
    user = Profile.objects.get(pk=pk).user
    preferences = user.preferences
    if not request.user.is_superuser and user != request.user:
        raise PermissionDenied
    
    if request.method == 'POST':
        p_form = PreferencesUpdateForm(request.POST, instance=preferences)
        if p_form.is_valid():
            p_form.save()
            messages.success(request, f'Preferences have been updated!')
            return redirect('preferences', pk=pk)
    else:
        p_form = PreferencesUpdateForm(instance=preferences)
    
    context = {
        'p_form': p_form,
        'user': user
    }
    return render(request, 'users/preferences.html', context)


# messages.debug
# messages.info
# messages.success
# messages.warning
# messages.error