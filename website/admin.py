# coding: utf-8
from django import forms
from django.contrib import admin
from models import *
from ckeditor.widgets import CKEditorWidget
from django.forms import ModelForm, Textarea, TextInput
from suit.widgets import AutosizedTextarea
from PIL import Image
from django.core.files.images import get_image_dimensions

class RegistroAdmin(admin.ModelAdmin):
    list_display   = ('id','nombre','apellido','horafecha','correo','celular')
    ordering = ('-id',)
    search_fields = ('nombre','apellido')

admin.site.register(Registro,RegistroAdmin)


from import_export import resources

class RegistroResource(resources.ModelResource):

    class Meta:
        model = Registro
