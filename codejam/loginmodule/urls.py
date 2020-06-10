from django.urls import path
from loginmodule.views import login,home1,auth_view,admindata,admin1,logout,loggedin, user1,invalidlogin,register,updatedata,home,admin,update,delete,deletedata,viewdatas,show
from django.contrib.auth import views as auth_views
from django.conf.urls import url
urlpatterns = [
	#path('admin/',admin.site.urls),
	url(r'^login/$', login,name='login_page'),
	url(r'^auth/$', auth_view),
   	url(r'^logout/$', logout,name='logout_page'),
  	url(r'^loggedin/$', loggedin),
   	url(r'^invalidlogin/$', invalidlogin),
   	url(r'^home/$',home,name='home_page'),
	url(r'^home1/$',home1,name='home_page1'),
   	url(r'^r/$',register,name='register_page'),
    #url(r'^logout/$',logout,name='logout_page'),
   	url(r'^user1/$',user1),
    url(r'^admin/$',admin),
    url(r'^delete/$',delete),
    url(r'^deletedata/$',deletedata),
    url(r'^viewdatas/$',viewdatas),
    url(r'^show/$',show),
    url(r'^update/$',update),
    url(r'^admin1/$',admin1),
    url(r'^admindata/$',admindata),
    url(r'^updatedata/$',updatedata)
   	# url(r'^practice/$',practice),
]

