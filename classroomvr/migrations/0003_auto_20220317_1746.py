# Generated by Django 3.2 on 2022-03-17 17:46

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('classroomvr', '0002_auto_20220316_1755'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='user',
            name='role',
        ),
        migrations.DeleteModel(
            name='Role',
        ),
    ]