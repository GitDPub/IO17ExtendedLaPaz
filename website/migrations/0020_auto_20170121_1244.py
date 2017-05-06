# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0019_oportunidad_videourl'),
    ]

    operations = [
        migrations.RenameField(
            model_name='oportunidad',
            old_name='VideoURL',
            new_name='video',
        ),
    ]
