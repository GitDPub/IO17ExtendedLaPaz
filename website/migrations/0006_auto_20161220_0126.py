# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0005_auto_20161220_0014'),
    ]

    operations = [
        migrations.AlterField(
            model_name='oportunidad',
            name='aplicacion',
            field=models.TextField(default='', max_length=2000, verbose_name='Como aplicar?'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='candidato',
            field=models.TextField(default='', max_length=2000, verbose_name='Candidato Ideal'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='premios',
            field=models.TextField(default='', max_length=2000, verbose_name='Premios'),
            preserve_default=False,
        ),
    ]
