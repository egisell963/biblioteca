# Generated by Django 4.2.6 on 2023-11-08 19:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('libreria', '0003_libro_estado_alter_libro_usuario_id_usuario_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='libro',
            name='estado',
            field=models.CharField(max_length=30, verbose_name='Estado'),
        ),
    ]
