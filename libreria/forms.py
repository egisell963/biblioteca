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
        fields = '__all__'

class Usuario(forms.ModelForm):
    class Meta:
        model = Usuario
        fields = '__all__'