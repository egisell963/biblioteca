from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('registro', views.registro, name='registro'),
    path('logout', views.exit, name='exit'),
    path('inicio', views.inicio, name='inicio'),
    path('galeria', views.galeria, name='galeria'),
    path('eliminar/<int:id_libro>/', views.eliminar, name='eliminar'),
    path('editar/<int:id_libro>', views.editar, name='editar'),
    path('descripcion/<int:id_libro>', views.descripcion, name='descripcion'),
    path('alquilar/<int:id_libro>', views.alquilar, name='alquilar'),
    path('devolver/<int:id_libro_usuario>', views.devolver, name='devolver'),
    path('devolver_todo', views.devolver_todo, name='devolver_todo'),



]
