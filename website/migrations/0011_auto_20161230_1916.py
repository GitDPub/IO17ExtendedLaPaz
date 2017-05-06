# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0010_auto_20161230_1451'),
    ]

    operations = [
        migrations.AlterField(
            model_name='oportunidad',
            name='fechafinprograma',
            field=models.DateField(null=True, verbose_name='Fecha Fin del programa', blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='fechainicio',
            field=models.DateField(verbose_name='Fecha de Inicio de la Convocatoria', blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='fechainicioprograma',
            field=models.DateField(null=True, verbose_name='Fecha de Inicio del programa', blank=True),
            preserve_default=True,
        ),
    ]
