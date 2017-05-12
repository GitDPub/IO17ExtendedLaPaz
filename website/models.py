# coding: utf-8
from __future__ import unicode_literals
from django.contrib.auth.models import *
from django.db import models
from datetime import datetime
from geoposition.fields import GeopositionField
from imagekit.models import ImageSpecField
from imagekit.processors import ResizeToFill

class Registro(models.Model):
    universidad_opciones = (
        ('Universidad Mayor de San Andrés (UMSA)', 'Universidad Mayor de San Andrés (UMSA)'),
        ('Universidad Católica Boliviana "San Pablo" (UCB)', 'Universidad Católica Boliviana "San Pablo" (UCB)'),
        ('Universidad del Valle (UNIVALLE)', 'Universidad del Valle (UNIVALLE)'),
        ('Universidad Franz Tamayo (UNIFRANZ)', 'Universidad Franz Tamayo (UNIFRANZ)'),
        ('Universidad La Salle', 'Universidad La Salle'),
        ('Universidad Pública de El Alto (UPEA)', 'Universidad Pública de El Alto (UPEA)'),
        ('Universidad Salesiana Boliviana', 'Universidad Salesiana Boliviana'),
        ('Universidad de Aquino Bolivia', 'Universidad de Aquino Bolivia'),
        ('Universidad Boliviana de Informática (UBI)', 'Universidad Boliviana de Informática (UBI)'),
        ('Escuela Militar de Ingeniería (EMI)', 'Escuela Militar de Ingeniería (EMI)'),
        ('Otro', 'Otro'),
    )
    interes_opciones = (
        ('Desarrollo de Software', 'Desarrollo de Software'),
        ('Diseño', 'Diseño'),
        ('Control de Calidad', 'Control de Calidad'),
        ('IoT', 'IoT'),
        ('DevOps', 'DevOps'),
        ('Realidad Virtual', 'Realidad Virtual'),
        ('Inteligencia Artificial', 'Inteligencia Artificial'),
        ('Otro', 'Otro'),
    )
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=200, verbose_name='Nombres')
    apellido = models.CharField(max_length=200, verbose_name='Apellidos')
    celular = models.CharField(max_length=15, blank=False)
    correo = models.EmailField(verbose_name='Correo electrónico (Preferentemente Gmail)',help_text='gdglapaz@gmail.com', blank=False)
    universidad = models.CharField(max_length=200,verbose_name='Si eres estudiante, ¿en que Universidad estudias?',choices=universidad_opciones, blank=False)
    profesional = models.BooleanField(default=False,db_column='profesional',verbose_name='¿Eres profesional?')
    interes = models.CharField(max_length=200,verbose_name='¿Cuál es el área que te apasiona?',choices=interes_opciones, blank=False)
    #institucion = models.CharField(max_length=100,verbose_name='Institución', blank=True)
    #descripcioncorta = models.CharField(max_length=100,verbose_name='Descripción Corta')
    #descripcioncompleta = models.TextField(max_length=5000,verbose_name='Descripción Completa')
    #numeroserie = models.CharField(max_length=50, blank=True,verbose_name='Numero de Serie del Equipo')
    horafecha = models.DateTimeField(auto_now=True,editable=False,verbose_name='Hora y Fecha')
    #adjunto = models.FileField(upload_to='archivo_solicitud/',verbose_name = "Adjuntar Documento",null=True,blank=True,help_text="añadir solo archivos PDF",)
    #estado = models.ForeignKey(Estado, db_column='estado',verbose_name="Estado")
    
    class Meta:
        #managed = False
        db_table = 'registro'
        verbose_name = "Registro"
        verbose_name_plural = "Registros"
        ordering = ['-id']

    def __unicode__(self):
        return "%s %s - %s"%(self.nombre,self.apellido,self.profesional)
