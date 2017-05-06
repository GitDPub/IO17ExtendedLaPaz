# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0015_auto_20170119_0654'),
    ]

    operations = [
        migrations.AlterField(
            model_name='oportunidad',
            name='bannergrande',
            field=models.ImageField(upload_to='banner_oportunidad/', max_length=500, verbose_name='Banner de la oportunidad (770x402)'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='bannermediano',
            field=models.ImageField(editable=False, upload_to='banner_oportunidad/', max_length=500, blank=True, null=True, verbose_name='Imagen de la oportunidad (250x210)'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='bannerreducido',
            field=models.ImageField(editable=False, upload_to='banner_oportunidad/', max_length=500, blank=True, null=True, verbose_name='Imagen de la oportunidad (83x83)'),
            preserve_default=True,
        ),
    ]
