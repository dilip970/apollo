from collections import UserDict
import email
from statistics import mode
from unicodedata import name
from click import password_option
from django.db import models

# Create your models here.

class user(models.Model):
    id          =       models.AutoField(primary_key=True)
    name        =       models.CharField(max_length=300,null=True)
    email       =       models.CharField(max_length=300,null=True)
    mobile      =       models.CharField(max_length=20,null=True)
    password    =       models.CharField(max_length=300,null=True)
    status      =       models.IntegerField(default=0)    
    createdAt   =       models.DateTimeField(auto_now_add=True)
    updatedAt   =       models.DateTimeField(auto_now=True)

class tickets(models.Model):
    id          =       models.AutoField(primary_key=True)
    ticketid    =       models.CharField(max_length=200)
    compliant   =       models.CharField(max_length=255)
    user        =       models.ForeignKey(user, on_delete=models.CASCADE)
    status      =       models.IntegerField(default=0)    
    createdAt   =       models.DateTimeField(auto_now_add=True)
    updatedAt   =       models.DateTimeField(auto_now=True)
      

class admin(models.Model):
    id          =       models.AutoField(primary_key=True)
    email       =       models.CharField(max_length=300)
    password    =       models.CharField(max_length=255)
    status      =       models.IntegerField(default=0)    
    createdAt   =       models.DateTimeField(auto_now_add=True)
    updatedAt   =       models.DateTimeField(auto_now=True)