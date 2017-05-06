# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('website', '0013_auto_20170105_1924'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='consulta',
            name='celular',
        ),
    ]
