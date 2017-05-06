# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0004_auto_20161216_2243'),
    ]

    operations = [
        migrations.RenameField(
            model_name='oportunidad',
            old_name='banner',
            new_name='bannergrande',
        ),
        migrations.AddField(
            model_name='oportunidad',
            name='bannermediano',
            field=models.ImageField(default='', upload_to='banner_oportunidad/', verbose_name='Imagen de la oportunidad (250x210)'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='oportunidad',
            name='bannerreducido',
            field=models.ImageField(default='', upload_to='banner_oportunidad/', verbose_name='Imagen de la oportunidad (83x83)'),
            preserve_default=False,
        ),
    ]
