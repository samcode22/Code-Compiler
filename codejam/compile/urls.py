from django.urls import path
from django.contrib.auth import views as auth_views
from django.conf.urls import url
from compile.views import code#,insert
from compile.views import insert
from compile.views import leaderboard,contest,SummerChallenge,WinterChallenge,P2,P3,P4,Problem
from compile import views
urlpatterns = [
	#path('admin/',admin.site.urls),
	#url(r'^insert/$',insert)
	url(r'^code/$',code),
	url(r'^insert/$',insert),
	url(r'^leaderboard/$',leaderboard,name='leader_page'),
	url(r'^contest/$',contest),
	url(r'^SummerChallenge/$',SummerChallenge),
	url(r'^WinterChallenge/$',WinterChallenge),	
	url(r'^P2/$',P2),
	url(r'^P3/$',P3),
	url(r'^P4/$',P4),
	url(r'^Problem/$',Problem)

	
	#url(r'^insert/$',views.Program.as_view())
]