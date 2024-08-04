Read me:

#Vietnamese
admin pass 1234
Sử dụng ảnh cùng 1 kích thước duy nhất ở các sản phẩm ( 200 x 200px, 400x400px, ...) để không bị lỗi css, js ở sản phẩm trang chủ
Khi gửi message/suggestion ở Contact thì nó sẽ lưu về Contact messages ở trang admin
Truy cập Cart thì hãy bấm vào hình giỏ hàng hay chữ Cart ở cạnh Contact
Khi bấm vào View sản phẩm ở trang chủ thì nút chia sẻ sẽ chia sẻ qua Facebook (dạng 127.0.0.1) còn hình cart sẽ tiến đến Cart, nút Back để trở về trang chủ
Search có thể cả chữ hoa và chữ thường, miễn là đúng tên sản phẩm
Trong mục admin thì order items sẽ hiện tất cả đồ mà đã add to cart và số lượng, còn orders sẽ hiện là oder (x) bởi user nào
Submit shipping address sẽ gửi vào Shipping addresss trong admin 
Bấm vào logo shop sẽ về trang chủ
Trang Home sẽ có filter theo tầm giá, lọc sản phẩm theo danh mục (Category)
- Khi bấm Order trong Checkout, sẽ có nút Export to Excel để khách hàng thuận tiện tính/kiểm tra các sản phẩm trước/sau khi mua
P/s: nếu bấm confirm sẽ có một mã QR để khách hàng thanh toán
Tick vào is_hot ở Product hay is_trending ở News trong CSDL admin sẽ có hiệu ứng nhấp nháy trên các sản phẩm/bài báo được tick
Mỗi khi bạn thêm 1 bài báo mới, nó sẽ hiện ngay trên đầu ở widget Latest Post
static\images\news_images chứa các bài báo trong CSDL mẫu

// Giao diện Admin django
ở Product, Order, ContactMessages sẽ có filter và search để dễ điều chỉnh
Bấm vào chữ đen ở các giá trị cột đầu tiên các class để chỉnh sửa, cập nhật giá trị
--UPDATE 1----- : /API/
 Đã thêm API Simple JWT 
* Lưu ý: Login và Logout bạn hãy sử dụng POST , còn lại thì sử dụng PUT hoặc DELETE, GET
Đọc api.txt để xem ví dụ hướng dẫn sử dụng  
#English 
1. Admin password: Use "1234".
2. Use images of consistent sizes: Use uniform image dimensions (e.g., 200x200px, 400x400px) for products to avoid CSS and JS issues on the homepage.
3. Saving messages/suggestions in Contact: When submitting a message or suggestion in the Contact form, save it in the Contact Messages section in the admin panel.
4. Accessing the cart: Click on the cart icon or the word "Cart" next to Contact to access the shopping cart.
5. Viewing products from the homepage: When clicking on "View Product" on the homepage, the share button should share to Facebook (localhost format), while clicking on the cart image should navigate to the Cart page. Use the Back button to return to the homepage.
6. Search functionality: Enable case-insensitive search for products by their names, allowing both uppercase and lowercase inputs.
6. Display in admin section:
Order items: Display all items that have been added to the cart along with their quantities.
Orders: Show orders in the format "Order (x)" indicating which user placed the order.
7. Submitting shipping address: Submitting a shipping address should store it in the Shipping Address section in the admin panel.
8. Clicking on the shop logo: Clicking on the shop logo should navigate back to the homepage.
9. The Home page will have filters by price range and product categories.
10. When clicking "Order" in the Checkout, there will be an "Export to Excel" button to allow customers to conveniently calculate/check products before/after purchase.
P/S.: If "Confirm" is clicked, a QR code will be generated for customer payment.
11. Tick is_hot in the Product model or is_trending in the News model in the admin database to show a flashing effect on the products/articles marked.
Each time you add a new article, it will immediately appear at the top in the Latest Post widget.
12. static\images\news_images contains the sample database articles.

//Django Admin Interface:
In the Product, Order, and ContactMessages sections, there will be filters and search functionalities for easy adjustments.
Click on the black text in the first column values of the classes to edit and update values.

# --UPDATE 1----- : /API/ 
Added Simple JWT API
* Note: For Login and Logout, please use POST, while for other operations, use PUT, DELETE, or GET
* Read api.txt for usage instructions