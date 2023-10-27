from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import Libro
from .forms import Libro_form
from .forms import Usuario
from django.http import JsonResponse
from django.contrib.auth.decorators import login_required
from django.contrib.auth import logout

def index(request):

    # form = Usuario(request.POST or None)
    # if form.is_valid():
        # nombre = request.POST['nombre']
        # correo = request.POST['correo']
        # contrasena = request.POST['contrasena']
        # rol = [2]
        # form.save()
    return redirect('login')
    # return render(request, 'vistas/index.html')


def registro(request):

    form = Usuario(request.POST or None)
    if form.is_valid():
        # nombre = request.POST['nombre']
        # correo = request.POST['correo']
        # contrasena = request.POST['contrasena']
        # rol = [2]
        # form.save()

        return redirect('index')
    # return HttpResponse("<h1>Bienvenido al login</h1>")
    return render(request, 'vistas/registro.html')


def exit(request):
    logout(request)
    return redirect('index')

@login_required
def inicio(request):
    # return HttpResponse("<h1>Bienvenido a la Biblioteca</h1>")
    form = Libro_form(request.POST or None)
    if form.is_valid():
        form.save()
        return redirect('inicio')

    libros = Libro.objects.all()
    return render(request, 'vistas/inicio.html', {'libros': libros, 'form': form})

@login_required
def galeria(request):

    libros = Libro.objects.all()
    return render(request, 'vistas/galeria.html', {'libros': libros})

@login_required
def eliminar(request, id_libro):
    libro = Libro.objects.get(id_libro=id_libro)
    libro.delete()
    return redirect('inicio')

@login_required
def editar(request, id_libro):
    libro = Libro.objects.get(id_libro=id_libro)
    form = Libro_form(request.POST or None, instance=libro)
    if form.is_valid() and request.method == 'POST':
        form.save()
        return redirect ('inicio')
    return render (request, 'vistas/editar.html', {'form': form})

@login_required
def descripcion(request, id_libro):

    descripcion = Libro.objects.get(id_libro = id_libro)
    return JsonResponse({'descripcion': descripcion.descripcion})

