# coding: utf-8
from django.shortcuts import render_to_response, get_object_or_404,redirect,render
from django.template import RequestContext,loader
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.forms import AuthenticationForm,PasswordChangeForm
from django.contrib.auth import login, authenticate, logout
from django.contrib.auth.decorators import login_required, user_passes_test
from django.http import HttpResponseRedirect, HttpResponse
from django.core.mail import EmailMultiAlternatives,get_connection
from django.contrib.auth.models import User
from datetime import datetime, timedelta,date,time
from django.utils import timezone
from django.core.urlresolvers import reverse
from django.http import Http404
from django.utils import formats
from website.forms import *
from website.models import *
from django.db.models import Count
from zinnia.models.entry import Entry
from django.contrib.sites.models import Site
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
import random
from django.db.models import Q
import re

def index(request):
    ctx = {}
    return render_to_response('index.html', ctx, context_instance=RequestContext(request))

def about(request):
    ctx = {}
    return render_to_response('about.html', ctx, context_instance=RequestContext(request))

def comollegar(request):
    ctx = {}
    return render_to_response('comollegar.html', ctx, context_instance=RequestContext(request))

def registro(request):
    info_enviado=False
    correo=""
    nombre=""
    apellido=""
    #miestado = Estado.objects.get(nombre="Nuevo")
    
    if request.method == 'POST':
        form = RegistroForm(request.POST, request.FILES)
        if form.is_valid():
            info_enviado = True
            correo=form.cleaned_data['correo']
            nombre=form.cleaned_data['nombre']
            apellido=form.cleaned_data['apellido']
            registro = form.save()
            
            email_asunto = "Registro Google IO Extended La Paz 2017"
            email_mensaje = "<p>Estimado %s %s : </p><br>  <p>Gracias por registrarte al evento mas grande en tecnologia.</p><br><p>Para oficializar su registro debe realizar un deposito</p>"%(nombre,apellido)
            email_texto = "Estimado %s %s : /n Gracias por registrarte al evento mas grande en tecnologia. /n Para oficializar su registro debe realizar un deposito."%(nombre,apellido)
            #configuracion del envio de correo
            msg=EmailMultiAlternatives(email_asunto,email_texto,'Webmaster <gdglapaz@gmail.com>',[correo])
            msg.attach_alternative(email_mensaje,'text/html')
            #msg.send()
        #else:
            #form.fields['estado'].widget = forms.HiddenInput()   
    else:
        form = RegistroForm()
        #form.fields['estado'].widget = forms.HiddenInput()
        #form.fields['adjunto'].widget = forms.HiddenInput()

    ctx = {'form':form,'correo':correo,'nombre':nombre,'apellido':apellido,'info_enviado':info_enviado}
    return render_to_response('registro.html',ctx,context_instance=RequestContext(request))



def error(request):
    ctx = {'error':'error'}

    return render_to_response('404.html',ctx,context_instance=RequestContext(request))

def handler404(request):
    response = render_to_response('404.html', {},
                                  context_instance=RequestContext(request))
    response.status_code = 404
    return response

def handler400(request):
    response = render_to_response('404.html', {},
                                  context_instance=RequestContext(request))
    response.status_code = 400
    return response

def handler500(request):
    response = render_to_response('404.html', {},
                                  context_instance=RequestContext(request))
    response.status_code = 500
    return response