from django.shortcuts import render
from django.contrib.sessions.models import Session
# Create your views here.
from django.shortcuts import render_to_response
from django.views.generic import TemplateView
from django.contrib.auth.decorators import login_required
from django.http import HttpResponseRedirect
import MySQLdb	
from django.template.context_processors import csrf	
import os, filecmp
from django.views.generic import TemplateView
import threading
import os
import sys
import filecmp
import re
import subprocess
from subprocess import CalledProcessError, TimeoutExpired
#import mysql.connector
@login_required(login_url='../../loginmodule/login/')
def code(request):
	#uname = request.POST.get('name', '')
	#code = request.POST.get('code', '')
	return render_to_response('code.html')
@login_required(login_url='../../loginmodule/login/')
def insert(request):
	

	# Open database connection
	db = MySQLdb.connect("localhost","ashish","ashish2312#","codejam")

	# prepare a cursor object using cursor() method
	cursor = db.cursor()
	uname = request.session['sname']
	code = request.POST.get('code', '')
	type=request.POST.get('type', '')
	qno=request.POST.get('qno','')
	if type=='c++':
		type='cpp'
	str2=uname+qno+"."+type
	print(type)
	request.session['q_no']=qno
	sql="select * from compile_coder where uname=%s and qno=%s"
	arg=(uname,qno)
	cursor = db.cursor()
	cursor.execute(sql,arg)
	records = cursor.fetchall()
	print(records)
	#mySQLconnection.commit()
	#cursor.close()
	count=0
	str=""
	str1=""
	
	#fname=request.POST.get('fname')
	
	
	
	if(type=='c'):
		with open(str2,"w") as t:
			t.write(code)
			
		b=os.system("gcc  "+str2+ " 2> error")# | a.exe")# >aout.txt")
		if(b==0):
			os.system("a >aout.txt")
		else:
			with open("error","r") as t:
				count=t.read()
			return render_to_response('insert.html',{'c':count})
		with open("aout.txt","r") as t:
			str=t.read()
		if int(qno)==1:
			with open("output1.txt","r") as t:
				str1=t.read()
				print(str1)
	
		if int(qno)==2:
			with open("output2.txt","r") as t:
				str1=t.read()
		if int(qno)==3:
			with open("output3.txt","r") as t:
				str1=t.read()
		if int(qno)==4:
			with open("output4.txt","r") as t:
				str1=t.read()
	if(type=='java'):
		with open(str2,"w") as t:
			t.write(code)
		
		os.system("javac "+uname+qno+".java")
		os.system("java "+uname+qno+" > aout.txt")
		with open("aout.txt","r") as t:
			str=t.read()
		if int(qno)==1:
			with open("output1.txt","r") as t:
				str1=t.read()
	
		if int(qno)==2:
			with open("output2.txt","r") as t:
				str1=t.read()
		if int(qno)==3:
			with open("output3.txt","r") as t:
				str1=t.read()
		if int(qno)==4:
			with open("output4.txt","r") as t:
				str1=t.read()
	if(type=='cpp'):
		print(str2)
		with open(str2,"w") as t:
			t.write(code);
		
		b=os.system("g++ "+str2+ " 2> error")
		if(b==0):
			os.system("a >aout.txt")
		else:
			with open("error","r") as t:
				count=t.read()
			return render_to_response('insert.html',{'c':count})


		# os.system("./a.out >aout.txt")
		with open("aout.txt","r") as t:
			str=t.read()
		if int(qno)==1:
			with open("output1.txt","r") as t:
				str1=t.read()
	
		if int(qno)==2:
			with open("output2.txt","r") as t:
				str1=t.read()
		if int(qno)==3:
			with open("output3.txt","r") as t:
				str1=t.read()
		if int(qno)==4:
			with open("output4.txt","r") as t:
				str1=t.read()
	s=str1.split(' ')
	s1=str.split(' ')
	print(s)
	print(s1)
	if s == s1:
		print("h")
		count=100
		with open("aout.txt","+w") as t:
				t.write("")
				t.close()	
		if len(records)!=0:
	   		sql1="update compile_coder set code=%s where uname=%s and code=%s"
	   		arg=(str2,uname,str2)
	   		cursor.execute(sql1,arg)
		
		else:
			sql="insert into compile_coder(uname,code,score,qno) values(%s,%s,%s,%s)"
			arg=(uname,str2,count,qno)
			print(str2)
			#count=50		
			c={}
			print(count)
			try:
			   # Execute the SQL command
			   cursor.execute(sql,arg)
			   # Commit your changes in the database
			   db.commit()
			except:
			   # Rollback in case there is any error
			   db.rollback()

			# disconnect from server
			db.close()
	return render_to_response('insert.html',{'c':count})

	# In[ ]:
@login_required(login_url='../../loginmodule/login/')
def leaderboard(request):
	db = MySQLdb.connect("localhost","ashish","ashish2312#","codejam")

	# prepare a cursor object using cursor() method
	#cursor = db.cursor()
	uname = request.session['sname']
	
	sql="select uname,count(*)*100 as c from compile_coder group by(uname)"
	cursor = db.cursor()
	cursor.execute(sql)
	records =cursor.fetchall()

	#records = compile_coder.objects.all()
	print(records)
	rec={}
	return render_to_response('leaderboard.html',{'re':records})
@login_required(login_url='../../loginmodule/login/')
def contest(request):
	#if 'sname' in request.session:
	return render_to_response("ContestPage.html")	
	#else:
	#return render_to_response("login.html")
@login_required(login_url='../../loginmodule/login/')
def SummerChallenge(request):	
	#if 'sname' not in request.session:
	#	return render_to_response("login.html")
	return render_to_response("SummerChallenge.html")
@login_required(login_url='../../loginmodule/login/')
def WinterChallenge(request):	
	return render_to_response("WinterChallenge.html")	
@login_required(login_url='../../loginmodule/login/')
def P2(request):
	return render_to_response("P2.html")
@login_required(login_url='../../loginmodule/login/')
def P3(request):
	return render_to_response("P3.html")
@login_required(login_url='../../loginmodule/login/')
def P4(request):
	return render_to_response("P4.html")
@login_required(login_url='../../loginmodule/login/')
def Problem(request):
	return render_to_response("Problem.html")
	