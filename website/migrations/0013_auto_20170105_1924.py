# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0012_auto_20161230_1919'),
    ]

    operations = [
        migrations.AlterField(
            model_name='oportunidad',
            name='fechainicio',
            field=models.DateField(null=True, verbose_name='Fecha de Inicio de la Convocatoria', blank=True),
            preserve_default=True,
        ),
    ]
