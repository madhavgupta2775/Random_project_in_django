# Generated by Django 4.0.10 on 2023-06-07 10:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('memo', '0004_comment'),
    ]

    operations = [
        migrations.AddField(
            model_name='post',
            name='is_announcement',
            field=models.BooleanField(default=False),
        ),
    ]