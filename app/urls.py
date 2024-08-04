from django.urls import path
from . import views
from .views import LoginView, LogoutUser, CustomTokenObtainPairView
# from rest_framework.authtoken.views import obtain_auth_token
from rest_framework_simplejwt.views import TokenObtainPairView, TokenRefreshView

urlpatterns = [
    path('', views.home, name="home"),
    path('register/', views.register, name="register"),
    path('login/', views.loginPage, name="login"),
    # path('api/login/', LoginView.as_view(), name='api-login'),
    path('logout/', views.logoutPage, name="logout_user"),
    # path('api/logout/', LogoutUser.as_view(), name='api-logout'),
    path('search/', views.search, name="search"),
    path('detail/', views.detail, name="detail"),
    path('category/', views.category, name="category"),
    path('cart/', views.cart, name="cart"),
    path('checkout/', views.checkout, name="checkout"),
    path('update_item/', views.updateItem, name="update_item"),
    path('contact/', views.contact, name="contact"),
    path('contact_submit/', views.contact_submit, name="contact_submit"),
    path('checkoutprocess/', views.checkout_process, name="checkout_process"),
    path('news/', views.news, name="news"),
    path('news/<int:pk>/', views.news_detail, name="news_detail"),
    path('api/token/', CustomTokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('api/token/refresh/', views.CustomTokenRefreshView.as_view(), name='token_refresh'),
    path('api/news/', views.NewsListCreateAPIView.as_view(), name='news-list-create'),
    path('api/news/<int:pk>/', views.NewsDetailAPIView.as_view(), name='news-detail'),
    path('api/contact/', views.ContactCreateAPIView.as_view(), name='contact-create'),
    path('api/cart/', views.CartAPIView.as_view(), name='cartapi'),
    path('api/cart/item/<int:pk>/', views.OrderItemAPIView.as_view(), name='order-item'),
]