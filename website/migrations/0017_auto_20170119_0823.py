# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0016_auto_20170119_0703'),
    ]

    operations = [
        migrations.AlterField(
            model_name='oportunidad',
            name='bannergrande',
            field=models.ImageField(upload_to='banner_oportunidad/', verbose_name='Imagen de la oportunidad (770x402)'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='bannermediano',
            field=models.ImageField(upload_to='banner_oportunidad/', null=True, verbose_name='Imagen de la oportunidad (250x210)', blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='bannerreducido',
            field=models.ImageField(upload_to='banner_oportunidad/', null=True, verbose_name='Imagen de la oportunidad (83x83)', blank=True),
            preserve_default=True,
        ),
    ]
