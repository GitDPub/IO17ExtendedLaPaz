# coding=utf-8
from django.forms import ModelForm
from website.models import *
from django import forms
from django.contrib.auth.forms import AuthenticationForm,PasswordChangeForm
from django.contrib.auth.models import User
from django.forms.widgets import PasswordInput, TextInput
from django.views.generic.edit import UpdateView
from django.template.loader import render_to_string
from datetime import date
from django.core.exceptions import ValidationError

# class ConsultaForm(ModelForm):
#     class Meta:
#         model = Consulta

#     nombre = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'Nombre','class': 'form-control',}))
#     correo = forms.CharField(widget=forms.EmailInput(attrs={'placeholder': 'Correo Electrónico','class': 'form-control',}))
#     titulo = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'Asunto','class': 'form-control',}))
#     mensaje = forms.CharField(widget=forms.Textarea(attrs={'placeholder': 'Mensaje','class': 'form-control',}))