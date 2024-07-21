from django.contrib import admin
from django.urls import path,include
from . import views
from .views import NewsDetailView

urlpatterns = [
    path('', views.home, name="home"),
    path('register/', views.register, name="register"),
    path('login/', views.loginPage, name="login"),
    path('search/', views.search, name="search"),
    path('detail/', views.detail, name="detail"),
    path('category/', views.category, name="category"),
    path('logout/', views.logoutPage, name="logout"),
    path('cart/', views.cart, name="cart"),
    path('checkout/', views.checkout, name="checkout"),
    path('update_item/', views.updateItem, name="update_item"),
    path('contact/', views.contact, name='contact'),
    path('contact_submit/', views.contact_submit, name='contact_submit'),
    path('checkoutprocess/', views.checkout_process, name='checkout_process'),
    path('news/', views.news, name='news'),
    path('news/<int:pk>/', views.news_detail, name='news_detail')
]