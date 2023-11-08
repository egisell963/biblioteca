from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class Libro(models.Model):

    id_libro = models.AutoField(primary_key=True)
    titulo = models.CharField(max_length=100, verbose_name="Título")
    autor = models.CharField(max_length=100, verbose_name="Autor")
    descripcion = models.TextField(null=True, verbose_name="Descripción")
    fecha = models.IntegerField(null=True, verbose_name="Año")
    cantidad = models.IntegerField(null=True, verbose_name="Cantidad")
    estado = models.CharField(null=False, max_length=30, verbose_name="Estado")

    def __str__(self):
        titulo = "Titulo: " + self.titulo
        return titulo

class Usuario(models.Model):

    id_usuario = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100, verbose_name="Nombre")
    correo = models.TextField(null=True, verbose_name="Correo", unique=True)
    contrasena = models.CharField(max_length=256, null=True, verbose_name="Contraseña")
    rol = models.ForeignKey('Rol', on_delete=models.DO_NOTHING, blank=True)

class Rol(models.Model):
    id_rol = models.AutoField(primary_key=True)
    nombre_rol = models.CharField(max_length=30, verbose_name="Rol")


class Libro_usuario(models.Model):
   
    id_libro_usuario = models.AutoField(primary_key=True)
    id_libro = models.ForeignKey(Libro, on_delete=models.DO_NOTHING, blank=True)
    id_usuario = models.ForeignKey(User, on_delete=models.DO_NOTHING, blank=True)
    estado = models.CharField(max_length=30, verbose_name="Estado")


