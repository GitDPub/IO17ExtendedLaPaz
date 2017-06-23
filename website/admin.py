# coding: utf-8
from django import forms
from django.contrib import admin
from models import *
from ckeditor.widgets import CKEditorWidget
from django.forms import ModelForm, Textarea, TextInput
from suit.widgets import AutosizedTextarea
from PIL import Image
from django.core.files.images import get_image_dimensions

from import_export import resources
from import_export.admin import ImportExportModelAdmin


class RegistroResource(resources.ModelResource):

    class Meta:
        model = Registro

class RegistroAdmin(ImportExportModelAdmin):
    list_display   = ('id','nombre','apellido','horafecha','correo','celular')
    ordering = ('-id',)
    search_fields = ('nombre','apellido')
    resource_class = RegistroResource

admin.site.register(Registro,RegistroAdmin)
