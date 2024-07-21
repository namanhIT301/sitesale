from django.shortcuts import render, redirect, render, get_object_or_404
from django.http import HttpResponse,JsonResponse
from .models import *
import json
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from .models import ContactMessage
from django.db.models import Q
from django.views.generic import DetailView

# Create your views here.

def detail(request):
    if request.user.is_authenticated:
        customer = request.user
        order, created = Order.objects.get_or_create(customer =customer,complete = False)
        items = order.orderitem_set.all()
        cartItems =  order.get_cart_items
        user_not_login = "hidden"
        user_login = "show"
    else:
        items = []
        order = {'get_cart_items':0, 'get_cart_total': 0}
        cartItems =  order['get_cart_items']
        user_not_login = "show"
        user_login = "hidden"
    id = request.GET.get('id','')    
    products = Product.objects.filter(id=id)
    categories = Category.objects.filter(is_sub = False)
    context= {'products': products, 'categories': categories,'items':items,'order':order, 'cartItems':cartItems, 'user_not_login': user_not_login, 'user_login':user_login}
    return render(request,'app/detail.html',context)

def category(request):
    categories = Category.objects.filter(is_sub=False)
    active_category_slug = request.GET.get('category', '')
    searched = request.GET.get('searched', '')

    if active_category_slug:
        active_category = Category.objects.get(slug=active_category_slug)
        products = Product.objects.filter(category__slug=active_category_slug)
    else:
        active_category = None
        products = Product.objects.all()

    if request.user.is_authenticated:
        customer = request.user
        order, created = Order.objects.get_or_create(customer=customer, complete=False)
        items = order.orderitem_set.all()
        cartItems = order.get_cart_items
        user_not_login = "hidden"
        user_login = "show"
    else:
        items = []
        order = {'get_cart_items': 0, 'get_cart_total': 0}
        cartItems = order['get_cart_items']
        user_not_login = "show"
        user_login = "hidden"

    context = {'items': items, 'order': order, 'cartItems': cartItems, 'categories': categories, 'products': products, 'active_category': active_category, 'searched': searched, 'user_not_login': user_not_login, 'user_login': user_login}
    return render(request, 'app/category.html', context)


def search(request):
    searched = request.POST.get("searched", "").strip()
    keys = Product.objects.filter(Q(name__icontains=searched) | Q(name__icontains=searched.capitalize()))

    if request.user.is_authenticated:
        customer = request.user
        order, created = Order.objects.get_or_create(customer=customer, complete=False)
        items = order.orderitem_set.all()
        cartItems = order.get_cart_items
        user_not_login = "hidden"
        user_login = "show"
    else:
        items = []
        order = {'get_cart_items': 0, 'get_cart_total': 0}
        cartItems = order['get_cart_items']
        user_not_login = "show"
        user_login = "hidden"
    products = Product.objects.all()
    context = {"searched": searched, "keys": keys,'products': products, 'cartItems': cartItems, 'user_not_login': user_not_login, 'user_login': user_login}
    return render(request, "app/search.html", context)

def register(request):
    form = CreateUserForm()
    if request.method == "POST":
        form = CreateUserForm(request.POST)
        if form.is_valid():
            form.save() 
            return redirect('login')    
    
    if request.user.is_authenticated:
        customer = request.user
        user_not_login = "hidden"
        user_login = "show"
        items = order.orderitem_set.all()
        order, created = Order.objects.get_or_create(customer= customer, complete=False)
        cartItems = order.get_cart_items
    else:
        items = []
        order = {'get_cart_items': 0, 'get_cart_total': 0}
        cartItems = order['get_cart_items']
        user_not_login = "show"
        user_login = "hidden"
    categories = Category.objects.filter(is_sub = False)
    context = {'order':order,'items':items, 'cartItems': cartItems, 'categories': categories,'user_not_login': user_not_login, 'user_login': user_login, 'form':form}
    return render(request,'app/register.html',context)

def loginPage(request):
    if request.method == "POST":
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(request, username = username, password = password)
        if user is not None:
            login(request,user)
            return redirect('home')
        else: messages.info(request,'user or password not correct!')

    if request.user.is_authenticated:
        user_not_login = "hidden"
        user_login = "show"
        customer = request.user
        items = order.orderitem_set.all()
        order, created = Order.objects.get_or_create(customer= customer, complete=False)
        cartItems = order.get_cart_items
        return redirect('home')
    else:
        user_not_login = "show"
        user_login = "hidden"
        items = []
        order = {'get_cart_items': 0, 'get_cart_total': 0}
        cartItems = order['get_cart_items']
    categories = Category.objects.filter(is_sub = False)
    context = {'order':order,'items':items, 'cartItems': cartItems,'categories': categories,'user_not_login': user_not_login, 'user_login': user_login}
    return render(request,'app/login.html',context)

def logoutPage(request):
    logout(request)
    return redirect('login')

def home(request):
    if request.user.is_authenticated:
        customer = request.user
        order, created = Order.objects.get_or_create(customer =customer,complete = False)
        items = order.orderitem_set.all()
        cartItems =  order.get_cart_items
        user_not_login = "hidden"
        user_login = "show"
    else:
        items = []
        order = {'get_cart_items':0, 'get_cart_total': 0}
        cartItems =  order['get_cart_items']
        user_not_login = "show"
        user_login = "hidden"
    
    hot_products = Product.objects.filter(is_hot=True)
    categories = Category.objects.filter(is_sub = False)
    products = Product.objects.all()
    category_id = request.GET.get('category')
    price_min = request.GET.get('price_min')
    price_max = request.GET.get('price_max')

    if category_id:
        products = products.filter(category__id=category_id)

    if price_min:
        products = products.filter(price__gte=price_min)

    if price_max:
        products = products.filter(price__lte=price_max)
    

    context={'hot_products':hot_products, 'items':items, 'categories':categories,'products': products,'cartItems':cartItems, 'user_not_login': user_not_login, 'user_login':user_login}
    return render(request,'app/home.html',context)
    
def cart(request):
    if request.user.is_authenticated:
        customer = request.user
        order, created = Order.objects.get_or_create(customer =customer,complete = False)
        items = order.orderitem_set.all()
        cartItems =  order.get_cart_items
        user_not_login = "hidden"
        user_login = "show"
    else:
        items = []
        order = {'get_cart_items':0, 'get_cart_total': 0}
        cartItems =  order['get_cart_items']
        user_not_login = "show"
        user_login = "hidden"

    categories = Category.objects.filter(is_sub = False)
    context= {'categories': categories,'items':items,'order':order, 'cartItems':cartItems, 'user_not_login': user_not_login, 'user_login':user_login}
    return render(request,'app/cart.html',context)


def checkout(request):
    if request.method == 'POST':
        form_data = request.POST
        customer = request.user
        order, created = Order.objects.get_or_create(customer=customer, complete=False)
        items = order.orderitem_set.all()
        cartItems = order.get_cart_items
        address = form_data.get('address', '')
        city = form_data.get('city', '')
        state = form_data.get('state', '')
        mobile = form_data.get('mobile', '')
        country = form_data.get('country', '')
        shipping_address = ShippingAddress.objects.create(
            customer=customer,
            order=order,
            address=address,
            city=city,
            state=state,
            mobile=mobile,
        )
        return render(request, 'app/thank_you2.html')
    if request.user.is_authenticated:
        customer = request.user
        order, created = Order.objects.get_or_create(customer=customer, complete=False)
        items = order.orderitem_set.all()
        cartItems = order.get_cart_items
        user_not_login = "hidden"
        user_login = "show"
    else:
        order = {'get_cart_items': 0, 'get_cart_total': 0}
        items = []
        cartItems = order['get_cart_items']
        user_not_login = "show"
        user_login = "hidden"

    categories = Category.objects.filter(is_sub=False)
    products = Product.objects.all()

    context = {'items': items, 'order': order, 'cartItems': cartItems,'categories': categories, 'products': products,'user_not_login': user_not_login,'user_login': user_login}
    return render(request, 'app/checkout.html', context)

def updateItem(request):
    data = json.loads(request.body)
    productId = data['productId']
    action = data['action']
    customer = request.user
    product = Product.objects.get(id = productId)
    order, created = Order.objects.get_or_create(customer =customer,complete = False)
    orderItem, created = OrderItem.objects.get_or_create(order =order,product = product)
    if action == 'add': 
        orderItem.quantity +=1
    elif action =='remove':
        orderItem.quantity -=1
    orderItem.save()
    if orderItem.quantity<=0:
        orderItem.delete()
        
    return JsonResponse('added', safe = False)

def contact(request):
    if request.user.is_authenticated:
        customer = request.user
        order, created = Order.objects.get_or_create(customer =customer,complete = False)
        items = order.orderitem_set.all()
        cartItems =  order.get_cart_items
        user_not_login = "hidden"
        user_login = "show"
    else:
        items = []
        order = {'get_cart_items':0, 'get_cart_total': 0}
        cartItems =  order['get_cart_items']
        user_not_login = "show"
        user_login = "hidden"
    categories = Category.objects.filter(is_sub = False)
    products = Product.objects.all()
    context={'items':items,'categories':categories,'products': products,'cartItems':cartItems, 'user_not_login': user_not_login, 'user_login':user_login}    
    return render(request, 'app/contact.html',context)

def contact_submit(request):
    if request.method == 'POST':
        name = request.POST.get('name', '')
        email = request.POST.get('email', '')
        message = request.POST.get('message', '')

        contact_message = ContactMessage.objects.create(name=name, email=email, message=message)
        messages.info(request, 'New messages!')

        return render(request, 'app/thank_you.html')  

def checkout_process(request):
    if request.method == 'POST':
        address = request.POST.get('address')
        city = request.POST.get('city')
        state = request.POST.get('state')
        mobile = request.POST.get('mobile')
        country = request.POST.get('country')

        shipping_address = ShippingAddress.objects.create(
            customer=request.user,
            order=None,
            address=address,
            city=city,
            state=state,
            mobile=mobile,
        )

        
        return redirect('cart')

    return render(request, 'app/checkout.html', {})

def news(request):
    if request.user.is_authenticated:
        customer = request.user
        order, created = Order.objects.get_or_create(customer =customer,complete = False)
        items = order.orderitem_set.all()
        cartItems =  order.get_cart_items
        user_not_login = "hidden"
        user_login = "show"
    else:
        items = []
        order = {'get_cart_items':0, 'get_cart_total': 0}
        cartItems =  order['get_cart_items']
        user_not_login = "show"
        user_login = "hidden"
    news_list = News.objects.all().order_by('-published_date')
    context = {'items': items, 'order': order, 'cartItems': cartItems,'user_not_login': user_not_login,'user_login': user_login, 'news_list': news_list}
    return render(request, 'app/news.html', context)

def news_detail(request, pk):
    if request.user.is_authenticated:
        customer = request.user
        order, created = Order.objects.get_or_create(customer=customer, complete=False)
        items = order.orderitem_set.all()
        cartItems = order.get_cart_items
        user_not_login = "hidden"
        user_login = "show"
    else:
        items = []
        order = {'get_cart_items': 0, 'get_cart_total': 0}
        cartItems = order['get_cart_items']
        user_not_login = "show"
        user_login = "hidden"

    news_item = get_object_or_404(News, pk=pk)
    print("News Item:", news_item)  # Debug print
    print("News Item Title:", news_item.title)  # Debug print

    context = {
        'items': items,
        'order': order,
        'cartItems': cartItems,
        'user_not_login': user_not_login,
        'user_login': user_login,
        'news_item': news_item
    }
    return render(request, 'app/news_detail.html', context)

class NewsDetailView(DetailView):
    model = News
    template_name = 'app/news_detail.html'
    context_object_name = 'news_item'