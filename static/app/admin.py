from django.contrib import admin
from .models import *

# Register your models here.

class OrderAdmin(admin.ModelAdmin):
    list_display = ('id', 'customer', 'date_order', 'get_ordered_products', 'get_cart_total')
    search_fields = ('transaction_id', 'customer__username')
    
    
admin.site.register(Product)
admin.site.register(Category)
admin.site.register(Order,OrderAdmin)
admin.site.register(OrderItem)
admin.site.register(ShippingAddress)
admin.site.register(ContactMessage)
admin.site.register(News)

