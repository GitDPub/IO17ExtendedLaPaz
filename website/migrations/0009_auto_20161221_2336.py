# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0008_pais_codigo'),
    ]

    operations = [
        migrations.AddField(
            model_name='oportunidad',
            name='requisitos',
            field=models.TextField(max_length=2000, verbose_name='Requisitos', blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='bannergrande',
            field=models.ImageField(upload_to='banner_oportunidad/', verbose_name='Imagen de la oportunidad (770x402)'),
            preserve_default=True,
        ),
    ]
