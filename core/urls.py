from django.contrib import admin
from django.urls import path, include
#importação app disparo de dag
from app_Disparo_de_DAGs.urls import *
#importação app quadro de metas
from quadro_de_metas.urls import *
#importacao app de classificacao
from classificacao.urls import *


urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/v1/', include('app_Disparo_de_DAGs.urls')),
    path('api/v1/', include('quadro_de_metas.urls')),
    path('api/v1/', include('classificacao.urls')),
]
