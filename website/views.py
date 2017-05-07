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

# def duplicar(request):
#     total = Oportunidad.objects.all().count()
#     paises = Pais.objects.all().count()
#     initial = 1
#     # for x in range(100, 200):
#     #     oportunidad = Oportunidad.objects.get(id=initial)
#     #     oportunidad.id = oportunidad.id +1
#     #     oportunidad.titulo = 'a' + str(random.randint(1,9000))
#     #     print oportunidad.titulo         
#     #     oportunidad.save()
#     #     initial+=1
#     oportunidad = Oportunidad.objects.get(id=initial)
#     oportunidad.id = total +10
#     oportunidad.titulo = 'b' + str(random.randint(1,9000))    
#     oportunidad.save()
    
#     ctx = {'total':total,'paises':paises,
#     }

#     return render_to_response('index.html', ctx, context_instance=RequestContext(request))