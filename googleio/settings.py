# coding: utf-8

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
import os
BASE_DIR = os.path.dirname(os.path.dirname(__file__))


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/1.7/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = '_9%aolx#e%d26h6zdkj*loasx(pjk^d9pwzb2yr#s0#00aph#5'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

TEMPLATE_DEBUG = True

ALLOWED_HOSTS = ['*']


# Application definition

THIRD_PARTY_APPS = (
    'suit',
    'bootstrapform',
    "geoposition",
    'session_security',
    'mptt',
    'zinnia',
    'ckeditor',
    'ckeditor_uploader',
    'imagekit',
)

DJANGO_APPS = (
    'django.contrib.admin',
    'django.contrib.sites',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
)

LOCAL_APPS = (
    'website',
)

INSTALLED_APPS =  THIRD_PARTY_APPS + DJANGO_APPS + LOCAL_APPS

MIDDLEWARE_CLASSES = (
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.auth.middleware.SessionAuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'session_security.middleware.SessionSecurityMiddleware',
)

LOGGING = {
    'version': 1,
    'disable_existing_loggers': True,
}

ROOT_URLCONF = 'googleio.urls'

WSGI_APPLICATION = 'googleio.wsgi.application'


# Database
# https://docs.djangoproject.com/en/1.7/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'googleio',
        'USER': 'root',
        'PASSWORD': 'bolivar',
        'HOST': 'localhost',
        'PORT': '',
    },
}


# # # Honor the 'X-Forwarded-Proto' header for request.is_secure()
SECURE_PROXY_SSL_HEADER = ('HTTP_X_FORWARDED_PROTO', 'https')

STATICFILES_FINDERS = (
    'django.contrib.staticfiles.finders.AppDirectoriesFinder',
    'django.contrib.staticfiles.finders.FileSystemFinder',
)

TEMPLATE_CONTEXT_PROCESSORS = (
    "django.contrib.auth.context_processors.auth",
    "django.core.context_processors.debug",
    "django.core.context_processors.i18n",
    "django.core.context_processors.media",
    "django.core.context_processors.static",
    "django.core.context_processors.csrf",
    "django.core.context_processors.tz",
    "django.contrib.messages.context_processors.messages",
    "django.core.context_processors.request",
    'zinnia.context_processors.version',
)

LANGUAGE_CODE = 'es'

TIME_ZONE = 'America/La_Paz'

USE_I18N = True

USE_L10N = True

USE_TZ = True

MAIN_APP = os.path.abspath(os.path.dirname(__file__))
PROJECT_ROOT = os.path.abspath(os.path.join(MAIN_APP, ".."))


STATIC_URL = '/static/'

STATIC_ROOT = os.sep.join(os.path.abspath(__file__).split(os.sep)[:-2] + ['static'])

MEDIA_URL = '/media/'

MEDIA_ROOT = os.path.join(os.path.dirname(__file__),'../media')

TEMPLATE_DIRS = (
os.path.join(os.path.dirname(__file__),'../templates'),
)

TEMPLATE_LOADERS = (
    'django.template.loaders.filesystem.Loader',
    'django.template.loaders.app_directories.Loader',  
)

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/1.7/howto/static-files/

SOUTH_MIGRATION_MODULES = {
    'captcha': 'captcha.south_migrations',
}

#configuracion de servidor de correo
EMAIL_HOST = 'mail.grupocosin.com'
EMAIL_PORT = 587
EMAIL_HOST_USER = 'webmaster@grupocosin.com'
EMAIL_HOST_PASSWORD = 'Cosin2015!'
EMAIL_USE_TLS = True
DEFAULT_FROM_EMAIL = EMAIL_HOST_USER
SERVER_EMAIL = EMAIL_HOST_USER

# EMAIL_HOST = 'smtp.gmail.com'
# EMAIL_PORT = 587
# EMAIL_HOST_USER = 'turi.tersa@gmail.com'
# EMAIL_HOST_PASSWORD = '*********'
# EMAIL_USE_TLS = True
# DEFAULT_FROM_EMAIL = EMAIL_HOST_USER
# SERVER_EMAIL = EMAIL_HOST_USER

#configuracion para el captcha
CAPTCHA_CHALLENGE_FUNCT = 'captcha.helpers.math_challenge'
CAPTCHA_FONT_SIZE = 70
CAPTCHA_LETTER_ROTATION = (-20,20)
CAPTCHA_OUTPUT_FORMAT = '<p align="center">%(image)s</p> %(hidden_field)s %(text_field)s'

#CONFIGURACION DJANGO GEOPOSITION
GEOPOSITION_GOOGLE_MAPS_API_KEY = 'AIzaSyBuAZrdKP79jkrHV8hAmjdQATK6MrRtQJ8'
GEOPOSITION_MAP_OPTIONS = {
    'minZoom': 3,
    'maxZoom': 20,
    # 'disableDefaultUI':'true',
    'zoom':20,
    'center':{"lat": -16.502710, "lng": -68.132103}
}

GEOPOSITION_MARKER_OPTIONS = {
    'cursor': 'move',
    'clickable': True,
    'crossOnDrag': True,
    'position':{"lat": -16.502710, "lng": -68.132103}
}

GEOPOSITION_MAP_WIDGET_HEIGHT = 400

#CONFIGURACION DE SEGURIDAD
CSRF_COOKIE_DOMAIN = None
SESSION_EXPIRE_AT_BROWSER_CLOSE = True
SESSION_SECURITY_WARN_AFTER = 1800
SESSION_SECURITY_EXPIRE_AFTER = 2100
PYTHONUNBUFFERED=True

DEFAULT_CHARSET = 'utf-8' 
FILE_CHARSET = 'utf-8' 

SITE_ID = 1
ZINNIA_MARKUP_LANGUAGE = 'textile'

ZINNIA_AUTO_CLOSE_COMMENTS_AFTER = 0

#CONFIGURACION DEL DJANGO SUIT
SUIT_CONFIG = {
    # header
    'ADMIN_NAME': 'Agente de Becas',
    'HEADER_DATE_FORMAT': 'l, j F Y',
    'HEADER_TIME_FORMAT': 'H:i a',

    # forms
    'SHOW_REQUIRED_ASTERISK': True,  # Default True
    'CONFIRM_UNSAVED_CHANGES': True, # Default True

    # menu
    # 'SEARCH_URL': '/admin/auth/user/',
    'MENU_ICONS': {
       'sites': 'icon-leaf',
       'auth': 'icon-lock',
       'website': ' icon-leaf',
    },
    'MENU_EXCLUDE': ('sites',),
}

#CONFIGURACION DJANGO CKEDITOR
CKEDITOR_UPLOAD_PATH = "imagen_speaker/"
CKEDITOR_IMAGE_BACKEND = "pillow"
CKEDITOR_CONFIGS = {
    'default': {
        'toolbar': 'full',
        'height': 300,
        'width': 700,
    },
}

#MEMCACHE
# CACHES = {
#     'default': {
#         'BACKEND': 'django.core.cache.backends.db.DatabaseCache',
#         'LOCATION': 'my_cache_table',
#     }
# }