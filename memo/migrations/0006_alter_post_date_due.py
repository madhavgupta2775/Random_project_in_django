# Generated by Django 4.0.10 on 2023-06-11 16:08

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('memo', '0005_post_is_announcement'),
    ]

    operations = [
        migrations.AlterField(
            model_name='post',
            name='date_due',
            field=models.DateTimeField(default=django.utils.timezone.now),
        ),
    ]
