from django import forms
from .models import Libro
from .models import Usuario

class Libro_form(forms.ModelForm):
    class Meta:
        model = Libro
        fields = '__all__'

class Usuario(forms.ModelForm):
    class Meta:
        model = Usuario
        fields = '__all__'