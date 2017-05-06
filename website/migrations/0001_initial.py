# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import geoposition.fields


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Area',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True)),
                ('nombre', models.CharField(unique=True, max_length=45)),
            ],
            options={
                'db_table': 'area',
                'verbose_name': 'Area',
                'verbose_name_plural': 'Areas',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Categoria',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True)),
                ('nombre', models.CharField(unique=True, max_length=45)),
            ],
            options={
                'db_table': 'categoria',
                'verbose_name': 'Categor\xeda',
                'verbose_name_plural': 'Categor\xedas',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Ciudad',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True)),
                ('nombre', models.CharField(unique=True, max_length=45)),
                ('posicion', geoposition.fields.GeopositionField(max_length=42, null=True, verbose_name='Posici\xf3n', blank=True)),
            ],
            options={
                'db_table': 'ciudad',
                'verbose_name': 'Ciudad',
                'verbose_name_plural': 'Ciudades',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Contacto',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True)),
                ('nombre', models.CharField(max_length=45, verbose_name='* Nombre')),
                ('correo', models.EmailField(max_length=75, verbose_name='Correo')),
                ('celular', models.CharField(max_length=100, verbose_name='Celular', blank=True)),
                ('titulo', models.CharField(max_length=100, verbose_name='Titulo')),
                ('mensaje', models.TextField(max_length=5000, verbose_name='Mensaje')),
                ('horafecha', models.DateTimeField(auto_now=True, verbose_name='Hora y Fecha')),
            ],
            options={
                'ordering': ['-horafecha'],
                'db_table': 'contacto',
                'verbose_name': 'Contacto',
                'verbose_name_plural': 'Contactos',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Etiqueta',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True)),
                ('nombre', models.CharField(unique=True, max_length=45)),
            ],
            options={
                'db_table': 'etiqueta',
                'verbose_name': 'Etiqueta',
                'verbose_name_plural': 'Etiquetas',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Financiamiento',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True)),
                ('nombre', models.CharField(unique=True, max_length=45)),
            ],
            options={
                'db_table': 'financiamiento',
                'verbose_name': 'Financiamiento',
                'verbose_name_plural': 'Financimientos',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Institucion',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True)),
                ('nombre', models.CharField(unique=True, max_length=45)),
                ('correo', models.EmailField(max_length=75, verbose_name='Correo electr\xf3nico')),
                ('sitioweb', models.URLField(default='', max_length=300, verbose_name='Sitio Web')),
                ('imagen', models.ImageField(upload_to='imagen_institucion/', verbose_name='Imagen (300x300)')),
            ],
            options={
                'db_table': 'institucion',
                'verbose_name': 'Intituci\xf3n',
                'verbose_name_plural': 'Instituciones',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Oportunidad',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True)),
                ('titulo', models.CharField(max_length=100, verbose_name='T\xedtulo')),
                ('resumen', models.CharField(max_length=600, verbose_name='Titulo')),
                ('descripcion', models.CharField(max_length=2000, verbose_name='Descripci\xf3n')),
                ('elegibilidad', models.CharField(max_length=2000, verbose_name='Elegibilidad')),
                ('beneficios', models.CharField(max_length=2000, verbose_name='Beneficios')),
                ('comoaplicar', models.CharField(max_length=2000, null=True, verbose_name='Como aplicar?', blank=True)),
                ('candidatoideal', models.CharField(max_length=2000, null=True, verbose_name='Candidato Ideal', blank=True)),
                ('otrospremios', models.CharField(max_length=2000, null=True, verbose_name='Otros Premios', blank=True)),
                ('fechainicio', models.DateField(auto_now=True, verbose_name='Fecha de Inicio del Programa')),
                ('fechalimite', models.DateField(auto_now=True, verbose_name='Fecha Limite de Aplicaci\xf3n')),
                ('fechapublicacion', models.DateField(auto_now=True, verbose_name='Fecha de Publicaci\xf3n')),
                ('fechaexpiracion', models.DateField(auto_now=True, verbose_name='Fecha de Fin del Programa')),
                ('sitioweb', models.URLField(default='', max_length=300, verbose_name='Sitio Web')),
                ('visitas', models.IntegerField(default=0, verbose_name='Numero de Visitas', editable=False)),
                ('banner', models.ImageField(upload_to='banner_oportunidad/', verbose_name='Imagen de la oportunidad')),
                ('convocatoriamundial', models.BooleanField(default=False, verbose_name='Convocatoria mundial')),
                ('online', models.BooleanField(default=False, verbose_name='Programa online')),
                ('frecuencia', models.CharField(default='Ninguno', max_length=45, choices=[('Ninguno', 'Ninguno'), ('Semestral', 'Semestral'), ('Anual', 'Anual'), ('Bienal', 'Bienal')])),
                ('estado', models.CharField(default='Borrador', max_length=45, choices=[('Borrador', 'Borrador'), ('Publicado', 'Publicado'), ('Vencido', 'Vencido')])),
                ('area', models.ManyToManyField(to='website.Area', verbose_name='Area')),
                ('categoria', models.ForeignKey(to='website.Categoria', db_column='categoria')),
                ('etiqueta', models.ManyToManyField(to='website.Etiqueta', verbose_name='Etiqueta')),
                ('financiamiento', models.ManyToManyField(to='website.Financiamiento', verbose_name='Financiamiento')),
                ('institucion', models.ForeignKey(to='website.Institucion', db_column='institucion')),
            ],
            options={
                'ordering': ['-id'],
                'db_table': 'oportunidad',
                'verbose_name': 'Oportunidad',
                'verbose_name_plural': 'Oportunidades',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Pais',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True)),
                ('nombre', models.CharField(unique=True, max_length=45)),
            ],
            options={
                'db_table': 'pais',
                'verbose_name': 'Pa\xeds',
                'verbose_name_plural': 'Pa\xedses',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Publicacion',
            fields=[
                ('id', models.AutoField(serialize=False, primary_key=True)),
                ('nombre', models.CharField(max_length=100, verbose_name='Nombre Completo')),
                ('correo', models.EmailField(max_length=75, verbose_name='Correo electr\xf3nico')),
                ('institucion', models.CharField(max_length=100, verbose_name='Instituci\xf3n')),
                ('titulo', models.CharField(max_length=100, verbose_name='Titulo')),
                ('fechalimite', models.DateField(auto_now=True, verbose_name='Fecha Limite de Aplicaci\xf3n')),
                ('descripcion', models.CharField(max_length=2000, verbose_name='Descripci\xf3n')),
                ('sitioweb', models.URLField(default='', max_length=300, verbose_name='Sitio Web')),
                ('categoria', models.ForeignKey(db_column='categoria', verbose_name='Categor\xeda', to='website.Categoria')),
            ],
            options={
                'ordering': ['-id'],
                'db_table': 'publicacion',
                'verbose_name': 'Publicaci\xf3n',
                'verbose_name_plural': 'Publicaciones',
            },
            bases=(models.Model,),
        ),
        migrations.AddField(
            model_name='oportunidad',
            name='paisespermitidos',
            field=models.ManyToManyField(to='website.Pais', verbose_name='Pa\xedses permitidos'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='oportunidad',
            name='ubicacion',
            field=models.ManyToManyField(to='website.Ciudad', verbose_name='Ubicaci\xf3n de la oportunidad'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='ciudad',
            name='pais',
            field=models.ForeignKey(to='website.Pais', db_column='pais'),
            preserve_default=True,
        ),
    ]
