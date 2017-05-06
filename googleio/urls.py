from django.conf.urls import patterns, include, url
from django.contrib import admin
from website import views
import settings
from django.conf.urls import handler404, handler500
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

urlpatterns = patterns('',
	url(r'^$', views.index, name='index'),
	url(r'^comments/', include('django_comments.urls')),
    url(r'^admin/', include(admin.site.urls)),
    url(r'session_security/', include('session_security.urls')),
	url(r'^error/$', views.error, name="error"),

	url(r'^about/$', views.about, name="about"),  
	# url(r'^como-llegar/(?P<id_oportunidad>.*)/$', views.detalle_oportunidad, name="oportunidad"),  
	# url(r'^agenda/$', views.aleatorio, name="aleatorio"),
	# url(r'^speakers/$',  views.busqueda, name="busqueda"), 
	# url(r'^organizadores/$', views.organizadores, name="organizadores"),
	#url(r'^duplicar/$', views.duplicar, name="duplicar"),
)

urlpatterns += staticfiles_urlpatterns()
urlpatterns += patterns('',
    (r'^media/(?P<path>.*)$', 'django.views.static.serve',{'document_root': settings.MEDIA_ROOT, 'show_indexes': True}),)

urlpatterns += patterns('',
	url(r'^ckeditor/', include('ckeditor_uploader.urls')),
)

handler400 = 'website.views.handler400'
handler404 = 'website.views.handler404'
handler500 = 'website.views.handler500'