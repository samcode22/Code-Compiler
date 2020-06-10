from django.shortcuts import render

# Create your views here.
from django.shortcuts import render_to_response,render,redirect
from django.views.generic import TemplateView
from django.http import HttpResponseRedirect
from django.contrib import auth
from django.template.context_processors import csrf 
from loginmodule.forms import SignUpForm
from django.contrib.auth.models import User
import MySQLdb
from django.db import models	
from django.core.mail import send_mail

def register(request):
	if request.method == 'POST':
		form=SignUpForm(request.POST)
		if form.is_valid():
			form.save()
			
			thanks={}
			return render_to_response('login.html',{'thanks':'thanks you are registered'})
	else:
		form=SignUpForm()
	
	arg={'form':form}
	return render(request,'signup1.html',arg)
def home(request):
	return render_to_response('index.html')
def home1(request):
	return render_to_response('index1.html')
def login(request):
	c = {}
	c.update(csrf(request))
	return render_to_response('login.html', c)
def auth_view(request):
	username = request.POST.get('username', '')
	password = request.POST.get('password', '')
	user = auth.authenticate(username=username,password=password)
	if user is not None:
		auth.login(request, user)
		request.session['sname']=username
		request.session.set_expiry(0)
		return HttpResponseRedirect('../../loginmodule/home1/')
	else:
		return HttpResponseRedirect('/loginmodule/invalidlogin/')
def loggedin(request):
	return render_to_response('code.html', {"full_name": request.user.username})
def invalidlogin(request):
	return render_to_response('invalidlogin.html')
def logout(request):
	auth.logout(request)
	return render_to_response('logout.html')
def home(request):
	return render_to_response('index.html')
def user1(request):
	return render_to_response('user.html')

def admin(request):
	return render_to_response('admin.html')
def delete(request):
	return render_to_response('delete.html')	
def deletedata(request):
	db = MySQLdb.connect("localhost","ashish","ashish2312#","codejam")

	# prepare a cursor object using cursor() method
	cursor = db.cursor()
	fname = request.POST.get('fname','')
	iname = request.POST.get('id','')
	
	sql="delete from auth_user where id=%s and first_name=%s"
	arg=(iname,fname)

	#user=User.objects.filter(first_name=fname)
	#user.delete()
	cursor = db.cursor()
	cursor.execute(sql,arg)
	db.close()
	return HttpResponseRedirect('/loginmodule/home/')
def viewdatas(request):
	db = MySQLdb.connect("localhost","ashish","ashish2312#","codejam")

	# prepare a cursor object using cursor() method
	cursor = db.cursor()
	sql="select id,username from auth_user"
	cursor = db.cursor()
	cursor.execute(sql)
	records = User.objects.all()
	# rec={}
	# sql1="select last_name from auth_user"
	# cursor1 = db.cursor()
	# cursor1.execute(sql1)
	# records2 = cursor1.fetchall()
	# rec2={}
	db.close()
	return render_to_response('showdata.html',{'rec':records})
def admin1(request):
	return render_to_response('admindata.html')
def admindata(request):
	uname=request.POST.get("username")
	password=request.POST.get("password")
	if uname=='has123' and password=='has123456789':
		return render_to_response('show.html') 
	else:
		return render_to_response('admindata.html')
def show(request):
	return render_to_response('show.html')
def update(request):
	return render_to_response('update.html')	
def updatedata(request):
	uname=request.POST.get('username','')
	fname=request.POST.get('fname','')
	lname=request.POST.get('lname','')
	email=request.POST.get('email','')
	id1=request.POST.get('id','')
	db = MySQLdb.connect("localhost","ashish","ashish2312#","codejam")

	# prepare a cursor object using cursor() method
	cursor = db.cursor()
	sql="update auth_user set username=%s,first_name=%s,last_name=%s,email=%s where id=%s"
	cursor = db.cursor()
	arg=(uname,fname,lname,email,id1)
	cursor.execute(sql,arg)

	# rec={}
	# sql1="select last_name from auth_user"
	# cursor1 = db.cursor()
	# cursor1.execute(sql1)
	# records2 = cursor1.fetchall()
	# rec2={}
	db.close()
	

	return HttpResponseRedirect('/loginmodule/home/')	