from django.shortcuts import render, HttpResponseRedirect
from apolloapp import models
import uuid

# Create your views here.

def isAlreadyLogin(request):
    if request.session.has_key('user_email') and request.session.has_key('user_role') and request.session.has_key('user_id'):
        return True
    return False

def index(request):
    return render(request,'pages/index.html')

def signup_page(request):
    try:
        msg = request.session['msg']
        del request.session['msg']
    except:
        msg = ''
    return render(request,'pages/signup.html',{'msg':msg})

def login_page(request):
    if isAlreadyLogin(request):
        return HttpResponseRedirect('/userdashboard/')
    else:
        try:
            msg = request.session['msg']
            del request.session['msg']
        except:
            msg = ''
        return render(request,'pages/login.html', {'msg':msg})

def userdashboard(request):
    return render(request,'pages/userdashboard.html')



def userticket(request):
    try:
        msg = request.session['msg']
        del request.session['msg']
    except:
        msg = ''
    user = request.session['user_id']
    ticket=models.tickets.objects.filter(user=user)
    # print('getticket-------',ticket)

    return render(request,'pages/userticket.html',{'msg':msg,'ticket':ticket})


def signup(request):
    if request.method == "POST":
        if models.user.objects.filter(email =  request.POST['email']).exists():
            request.session['msg'] = "User Email Already Exists....!"
            return HttpResponseRedirect('/signuppage/')
        else:
            patient = models.user()
            patient.name = request.POST['name']
            patient.email = request.POST['email']
            patient.mobile = request.POST['mobile']
            patient.password = request.POST['password']
            patient.save()
            request.session['msg'] = "User Registered Successfully.....!"
            return HttpResponseRedirect('/signuppage/')



def login(request):
    if isAlreadyLogin(request):
        return HttpResponseRedirect('/userdashboard/')
    else:
        if request.method == 'POST':
            email = request.POST['email']
            password = request.POST['password']
            if models.user.objects.filter(email = email, password = password).exists():
                user = models.user.objects.get(email = email)
                request.session['user_email'] = email
                request.session['user_role'] = 'user'
                request.session['user_id']  = user.id
                return HttpResponseRedirect('/userdashboard/')
            else:
                request.session['msg'] = "Invalid Email or Password"
                return HttpResponseRedirect('/loginpage/')
        return HttpResponseRedirect('/loginpage/')



def raise_ticket(request):
    if isAlreadyLogin(request):
        if request.method == "POST":
            userid               =   request.session['user_id']
            user                 =   models.user.objects.get(id = userid)
            ticket               =   models.tickets()
            ticketid             =   uuid.uuid1()   
            ticketid             =   ticketid.fields
            ticketid             =   "T"+str(ticketid[0])
            ticket.ticketid      =   ticketid
            ticket.user          =   user
            ticket.compliant     =   request.POST['compliant']
            
            print('ticketid: ',ticketid)
            print('ticket.user: ',ticket.user)
            print('ticket.compliant: ',ticket.compliant)
            
            
            ticket.save()
            request.session['msg']      =   "Ticket Raised Successfully...!"
            return HttpResponseRedirect('/userticket/')            
    else:
        return HttpResponseRedirect('/loginpage/')


def adminloginpage(request):
    try:
        msg = request.session['msg']
        del request.session['msg']
    except:
        msg = ''
    return render(request,'admin/admin.html',{'msg':msg})

def adminlogin(request):
    if request.method == 'POST':
        email = request.POST['email']
        password = request.POST['password']
        if models.admin.objects.filter(email = email, password = password).exists():
            user = models.admin.objects.get(email = email)
            return HttpResponseRedirect('/admindashboard/')
        else:
            request.session['msg'] = "Invalid Email or Password"
            return HttpResponseRedirect('/adminloginpage/')
    return HttpResponseRedirect('/adminloginpage/')


def admindashboard(request):
    return render(request,'admin/admindashboard.html')

def ticketlist(request):
    try:
        msg = request.session['msg']
        del request.session['msg']
    except:
        msg = ''
    ticket=models.tickets.objects.all()
    print('getticket-------',ticket)

    return render(request,'admin/ticketslist.html',{'msg':msg,'ticket':ticket})


def compliant_status(request):
    id = request.POST['id']
    ticket = models.tickets.objects.get(id=id)
    if ticket.status == 0:
        ticket.status = 1
        ticket.save()
    else:
        ticket.status = 0
        ticket.save()
    return HttpResponseRedirect('/ticketlist/')

def logout(request):
    try:
        del request.session['user_email']
        del request.session['user_role']
        
    except:
        pass
    return HttpResponseRedirect('/loginpage/')
