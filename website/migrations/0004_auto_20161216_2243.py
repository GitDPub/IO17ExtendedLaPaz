# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0003_auto_20161216_1433'),
    ]

    operations = [
        migrations.RenameField(
            model_name='oportunidad',
            old_name='comoaplicar',
            new_name='aplicacion',
        ),
        migrations.RenameField(
            model_name='oportunidad',
            old_name='candidatoideal',
            new_name='candidato',
        ),
        migrations.RemoveField(
            model_name='oportunidad',
            name='otrospremios',
        ),
        migrations.AddField(
            model_name='oportunidad',
            name='premios',
            field=models.TextField(max_length=2000, null=True, verbose_name='Premios', blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='oportunidad',
            name='beneficios',
            field=models.TextField(max_length=2000, null=True, verbose_name='Beneficios', blank=True),
            preserve_default=True,
        ),
    ]
