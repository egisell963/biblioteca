# Generated by Django 4.2.6 on 2023-10-26 04:16

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Libro',
            fields=[
                ('id_libro', models.AutoField(primary_key=True, serialize=False)),
                ('titulo', models.CharField(max_length=100, verbose_name='Título')),
                ('autor', models.CharField(max_length=100, verbose_name='Autor')),
                ('descripcion', models.TextField(null=True, verbose_name='Descripción')),
                ('fecha', models.IntegerField(null=True, verbose_name='Año')),
                ('cantidad', models.IntegerField(null=True, verbose_name='Cantidad')),
            ],
        ),
    ]
