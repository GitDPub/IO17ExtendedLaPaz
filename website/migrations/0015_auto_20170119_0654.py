# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0014_remove_consulta_celular'),
    ]

    operations = [
        migrations.AlterField(
            model_name='oportunidad',
            name='bannergrande',
            field=models.ImageField(upload_to='banner_oportunidad/', verbose_name='Banner de la oportunidad (770x402)'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='bannermediano',
            field=models.ImageField(verbose_name='Imagen de la oportunidad (250x210)', upload_to='banner_oportunidad/', null=True, editable=False, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='bannerreducido',
            field=models.ImageField(verbose_name='Imagen de la oportunidad (83x83)', upload_to='banner_oportunidad/', null=True, editable=False, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='publicacion',
            name='fechalimite',
            field=models.DateField(verbose_name='Fecha Limite de Aplicaci\xf3n'),
            preserve_default=True,
        ),
    ]
