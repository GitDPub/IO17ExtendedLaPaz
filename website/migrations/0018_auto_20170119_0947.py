# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0017_auto_20170119_0823'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='oportunidad',
            name='bannermediano',
        ),
        migrations.RemoveField(
            model_name='oportunidad',
            name='bannerreducido',
        ),
    ]
