# coding: utf-8
from __future__ import unicode_literals
from django.contrib.auth.models import *
from django.db import models
from datetime import datetime
from geoposition.fields import GeopositionField
from imagekit.models import ImageSpecField
from imagekit.processors import ResizeToFill

