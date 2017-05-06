# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0007_auto_20161220_0127'),
    ]

    operations = [
        migrations.AddField(
            model_name='pais',
            name='codigo',
            field=models.CharField(default='', max_length=15, verbose_name='Codigo Alpha-2'),
            preserve_default=False,
        ),
    ]
