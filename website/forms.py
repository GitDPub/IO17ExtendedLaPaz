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

class RegistroForm(ModelForm):
    class Meta:
        model = Registro
        exclude=['horafecha']