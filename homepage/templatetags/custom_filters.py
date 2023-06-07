from django import template
from django.utils.html import format_html

register = template.Library()

@register.filter
def format_username(user):
    if user.is_superuser:

        return format_html(f'{user.username} <span title="Admin">👑</span>')
        #return f'{user.username} <div title="admin">👑</div>'
    else:
        return user.username
