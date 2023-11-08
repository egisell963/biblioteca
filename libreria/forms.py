from django import forms
from .models import Libro
from .models import Usuario
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User


class CustomUserCreationForm(UserCreationForm):
    
    class Meta:
        model = User
        fields = ['username', 'email', 'password1', 'password2']


class Libro_form(forms.ModelForm):
    class Meta:
        model = Libro
        fields = ['titulo', 'autor', 'descripcion', 'fecha', 'cantidad']

class Usuario(forms.ModelForm):
    class Meta:
        model = Usuario
        fields = '__all__'