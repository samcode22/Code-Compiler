from django.shortcuts import render
from django.contrib.sessions.models import Session
# Create your views here.
from django.shortcuts import render_to_response
from django.views.generic import TemplateView
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
# Create your views here.
def practicecode(request):
	return render_to_response('login1.html')
def insert1(request):
	c1={}
	code = request.POST.get('code', '')
	type=request.POST.get('type', '')
	# if(type==c):
	with open("p.c","w") as t:
		t.write(code)
	if (type=='c'):
		b=os.system("gcc p.c 2> error")# | a.exe")# >aout.txt")
		if(b==0):
			os.system("a >aout.txt")
			with open("aout.txt","r+") as t:
				str=t.read()
				count=str
			return render_to_response('insert1.html',{'c1':count})
		else:
			with open("error","r") as t:
				count=t.read()
			return render_to_response('insert1.html',{'c1':count})
		