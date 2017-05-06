# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0006_auto_20161220_0126'),
    ]

    operations = [
        migrations.AlterField(
            model_name='oportunidad',
            name='aplicacion',
            field=models.TextField(max_length=2000, verbose_name='Como aplicar?', blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='candidato',
            field=models.TextField(max_length=2000, verbose_name='Candidato Ideal', blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='premios',
            field=models.TextField(max_length=2000, verbose_name='Premios', blank=True),
            preserve_default=True,
        ),
    ]
