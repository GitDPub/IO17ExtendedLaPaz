# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0011_auto_20161230_1916'),
    ]

    operations = [
        migrations.AlterField(
            model_name='oportunidad',
            name='ubicacion',
            field=models.ManyToManyField(to='website.Ciudad', verbose_name='Ubicaci\xf3n de la oportunidad', blank=True),
            preserve_default=True,
        ),
    ]
