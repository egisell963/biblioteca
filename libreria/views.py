from django.shortcuts import render, redirect
from django.http import HttpResponse

from libreria.galeria import Galeria
from .models import Libro, Libro_usuario
from .forms import Libro_form
from .forms import Usuario
from django.http import JsonResponse
from django.contrib.auth.decorators import login_required
from django.contrib.auth import logout, authenticate, login
from django.contrib.auth.models import User
from .forms import CustomUserCreationForm


def index(request):

    return redirect('login')
    # return render(request, 'vistas/index.html')


def registro(request):

    data = {
        'form': CustomUserCreationForm()
    }

    if request.method == 'POST':
        user_creation_form = CustomUserCreationForm(data=request.POST)
        
        if user_creation_form.is_valid():
            user_creation_form.save()

            user = authenticate(
                username=user_creation_form.cleaned_data['username'], password=user_creation_form.cleaned_data['password1'])
            login(request, user)
            return redirect('inicio')

    # return HttpResponse("<h1>Bienvenido al login</h1>")
    return render(request, 'registration/registro.html', data)


def exit(request):
    logout(request)
    return redirect('index')

@login_required
def inicio(request):
    # return HttpResponse("<h1>Bienvenido a la Biblioteca</h1>")
    form = Libro_form(request.POST or None)
    if form.is_valid():
        form.save()   
        libro = Libro.objects.latest('id_libro')
        libro.estado = 'activo'
        libro.save()
        return redirect('inicio')

    libros = Libro.objects.filter(estado = 'activo')
    return render(request, 'vistas/inicio.html', {'libros': libros, 'form': form})

@login_required
def galeria(request):

    id = request.user.id

    libro_devuelto = Libro_usuario.objects.filter(id_usuario=id, estado='devuelto')
    libro_alquilado = Libro_usuario.objects.filter(id_usuario=id, estado='alquilado')

    return render(request, 'vistas/galeria.html', {'libro_devuelto': libro_devuelto, 'libro_alquilado': libro_alquilado})

@login_required
def eliminar(request,id_libro):
    
    libro = Libro.objects.get(id_libro=id_libro)
    libro.estado = 'eliminado'
    libro.save()
    return redirect('inicio')


@login_required
def editar(request, id_libro):
    libro = Libro.objects.get(id_libro=id_libro)
    form = Libro_form(request.POST or None, instance=libro)
    if form.is_valid() and request.method == 'POST':
        form.save()
        return redirect('inicio')
    return render(request, 'vistas/editar.html', {'form': form})


@login_required
def descripcion(request, id_libro):

    descripcion = Libro.objects.get(id_libro=id_libro)
    return JsonResponse({'descripcion': descripcion.descripcion})

@login_required
def alquilar(request, id_libro):
   
    libro = Libro.objects.get(id_libro = id_libro)
    if libro.cantidad:

        libro_alquilado = Libro_usuario.objects.filter(id_libro=id_libro, id_usuario=request.user.id, estado='alquilado').exists()

        if libro_alquilado:
            return redirect('galeria')
        else:
            libro_devuelto = Libro_usuario.objects.filter(id_libro=id_libro, id_usuario=request.user.id, estado='devuelto').first()
            libro = Libro.objects.get(id_libro=id_libro)
            if libro_devuelto:
                libro_devuelto.estado = 'alquilado'
                libro_devuelto.save()
            else: 
                usuario = request.user
                estado = 'alquilado'
                    
                galeria = Libro_usuario.objects.create(id_libro = libro, id_usuario = usuario, estado = estado)
                galeria.save()
            libro.cantidad -= 1
            libro.save()
    return redirect('galeria')

@login_required
def devolver(request, id_libro_usuario):


    libro = Libro_usuario.objects.get(id_libro_usuario=id_libro_usuario)
    libro.estado = 'devuelto'

    libro.save()
    libro_devuelto = Libro.objects.get(id_libro = libro.id_libro.id_libro)
    libro_devuelto.cantidad += 1
    libro_devuelto.save()

    return redirect('galeria')       

@login_required
def devolver_todo(request):

    libro_devolver = Libro_usuario.objects.filter(id_usuario=request.user.id, estado='alquilado')
    for libro in libro_devolver:
        libro.estado = 'devuelto'
        libro.save()
        libro_devuelto = Libro.objects.get(id_libro = libro.id_libro.id_libro)
        libro_devuelto.cantidad += 1
        libro_devuelto.save()
    return redirect('galeria')





