# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0009_auto_20161221_2336'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='oportunidad',
            name='premios',
        ),
        migrations.AddField(
            model_name='oportunidad',
            name='fechafinprograma',
            field=models.DateField(default=datetime.datetime(2016, 12, 30, 18, 51, 16, 534578, tzinfo=utc), verbose_name='Fecha Fin del programa', blank=True),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='oportunidad',
            name='fechainicioprograma',
            field=models.DateField(default=datetime.datetime(2016, 12, 30, 18, 51, 26, 836910, tzinfo=utc), verbose_name='Fecha de Inicio del programa', blank=True),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='fechapublicacion',
            field=models.DateField(auto_now=True, verbose_name='Fecha de Publicaci\xf3n'),
            preserve_default=True,
        ),
    ]
