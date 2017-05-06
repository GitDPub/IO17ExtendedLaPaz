# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0002_auto_20161216_1247'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Contacto',
            new_name='Consulta',
        ),
        migrations.AlterModelOptions(
            name='consulta',
            options={'ordering': ['-horafecha'], 'verbose_name': 'Consulta', 'verbose_name_plural': 'Consultas'},
        ),
        migrations.RemoveField(
            model_name='oportunidad',
            name='convocatoriamundial',
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='beneficios',
            field=models.TextField(max_length=2000, verbose_name='Beneficios'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='candidatoideal',
            field=models.TextField(max_length=2000, null=True, verbose_name='Candidato Ideal', blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='comoaplicar',
            field=models.TextField(max_length=2000, null=True, verbose_name='Como aplicar?', blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='descripcion',
            field=models.TextField(max_length=2000, verbose_name='Descripci\xf3n'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='elegibilidad',
            field=models.TextField(max_length=2000, verbose_name='Elegibilidad'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='fechaexpiracion',
            field=models.DateField(verbose_name='Fecha de Expiraci\xf3n'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='fechainicio',
            field=models.DateField(verbose_name='Fecha de Inicio de la Convocatoria'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='fechalimite',
            field=models.DateField(verbose_name='Fecha Limite para Postular'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='fechapublicacion',
            field=models.DateField(verbose_name='Fecha de Publicaci\xf3n'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='otrospremios',
            field=models.TextField(max_length=2000, null=True, verbose_name='Otros Premios', blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='resumen',
            field=models.TextField(max_length=600, verbose_name='Resumen'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='visitas',
            field=models.IntegerField(default=0, verbose_name='N\xfamero de Visitas', editable=False),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='publicacion',
            name='descripcion',
            field=models.TextField(max_length=2000, verbose_name='Descripci\xf3n'),
            preserve_default=True,
        ),
        migrations.AlterModelTable(
            name='consulta',
            table='consulta',
        ),
    ]
