from django.urls import path
from django.contrib.auth import views as auth_views
from django.conf.urls import url
from practice.views import practicecode#,insert
from practice.views import insert1
# from compile.views import leaderboard
from practice import views
urlpatterns = [
	#path('admin/',admin.site.urls),
	#url(r'^insert/$',insert)
	url(r'^practicecode/$',practicecode),
	url(r'^insert1/$',insert1)
	#url(r'^leaderboard/$',leaderboard)
	#url(r'^insert/$',views.Program.as_view())
]