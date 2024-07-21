from django.contrib import admin
from django.urls import path,include
#load image
from django.conf.urls.static import static
from django.conf import settings

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('app.urls')),
    path('custom_admin/', include('custom_admin.urls')),
]
#load image
urlpatterns += static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT)


