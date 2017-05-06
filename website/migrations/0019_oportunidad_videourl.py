# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0018_auto_20170119_0947'),
    ]

    operations = [
        migrations.AddField(
            model_name='oportunidad',
            name='VideoURL',
            field=models.CharField(max_length=100, null=True, verbose_name='Video', blank=True),
            preserve_default=True,
        ),
    ]
