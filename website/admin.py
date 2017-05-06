# coding: utf-8
from django import forms
from django.contrib import admin
from models import *
from ckeditor.widgets import CKEditorWidget
from django.forms import ModelForm, Textarea, TextInput
from suit.widgets import AutosizedTextarea
from PIL import Image
from django.core.files.images import get_image_dimensions