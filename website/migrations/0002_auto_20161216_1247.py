# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='oportunidad',
            name='titulo',
            field=models.CharField(unique=True, max_length=100, verbose_name='T\xedtulo'),
            preserve_default=True,
        ),
    ]
