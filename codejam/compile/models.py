from django.db import models

# Create your models here.

class Coder(models.Model):
	uname = models.CharField(max_length=100)
	code = models.FileField(upload_to='uploads')
	score = models.CharField(max_length=20)
	qno=models.CharField(max_length=20)

