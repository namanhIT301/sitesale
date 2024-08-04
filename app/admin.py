from django.contrib import admin
from .models import *
from django.utils.html import format_html
from django.db.models import Q
from django.contrib.auth.models import User
from .models import UserToken

# Register your models here.

admin.site.unregister(User)


class UserTokenAdmin(admin.ModelAdmin):
    list_display = ('user', 'access_token', 'refresh_token')

admin.site.register(UserToken, UserTokenAdmin)

class OrderAdmin(admin.ModelAdmin):
    list_display = ('id', 'customer', 'date_order', 'get_ordered_products', 'get_cart_total')
    search_fields = ('customer__username',) 
    list_filter = ('customer', 'date_order', 'complete') 


class NewsAdmin(admin.ModelAdmin):
    list_display = ('title', 'thumbnail', 'content', 'published_date')
    
    def thumbnail(self, obj):
        if obj.image:
            return format_html('<img src="{}" style="width: 50px; height: 50px;"/>', obj.image.url)
        return 'No Image'
    thumbnail.short_description = 'Image'


class ContactMessageAdmin(admin.ModelAdmin):
    list_display = ('name', 'email', 'message', 'created_at')
    search_fields = ('name', 'email', 'message')

class ShippingAddressAdmin(admin.ModelAdmin):
    list_display = ('customer','address','city', 'state', 'mobile', 'date_added')
    search_fields = ('customer__username','address','city', 'state', 'mobile', 'date_added')

class ProductAdmin(admin.ModelAdmin):
    list_display = ('name', 'categories_list','thumbnail', 'price', 'digital', 'is_hot')
    list_filter = ('is_hot','price', 'category')
    search_fields = ('name', 'price')

    def thumbnail(self, obj):
        if obj.image:
            return format_html('<img src="{}" style="width: 50px; height: 50px;"/>', obj.image.url)
        return 'No Image'
    thumbnail.short_description = 'Image'

    def categories_list(self, obj):
        return ", ".join([category.name for category in obj.category.all()])
    categories_list.short_description = 'Categories'

    def get_search_results(self, request, queryset, search_term):
        queryset, use_distinct = super().get_search_results(request, queryset, search_term)
        if search_term.isdigit():
            # if number => price
            queryset = queryset.filter(price__exact=float(search_term))
        else:
            # if not number => name
            queryset = queryset.filter(Q(name__icontains=search_term) | Q(price__icontains=search_term))
        return queryset, use_distinct

admin.site.register(Product,ProductAdmin)
admin.site.register(Category)
admin.site.register(Order,OrderAdmin)
admin.site.register(OrderItem)
admin.site.register(ShippingAddress,ShippingAddressAdmin)
admin.site.register(ContactMessage,ContactMessageAdmin)
admin.site.register(News,NewsAdmin)
admin.site.register(User)
