# Generated by Django 4.0.10 on 2023-05-26 19:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('memo', '0002_post_private'),
    ]

    operations = [
        migrations.AddField(
            model_name='post',
            name='is_archived',
            field=models.BooleanField(default=False),
        ),
    ]