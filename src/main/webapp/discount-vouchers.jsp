<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Phiếu giảm giá</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/discount-vouchers.css">
    <script src="js/discount-vouchers.js" defer></script>
</head>
<body>
<header>
    <section class="section-top">
        <div class="container">
            <a class="text text-logo" href="index.jsp">DacSanVungMien</a>
            <form class="search-bar" method="get">
                <input class="search-input" type="text" placeholder="Tìm kiếm sản phẩm...">
                <button class="search-button" type="button" onclick="location.href='KetQuaTimKiem.html'">
                    <img src="images/search.png" height="24" width="24"/>
                </button>
            </form>
            <div class="group">
                <p class="text">
                    Hotline: 0921955395
                </p>
                <div class="sub-group">
                    <img src="images/user.png" height="24" width="24"/>
                    <div class="text-login">
                        @nguyenvana123
                        <div class="sub-login">
                            <a class="sub-item" href="personal-info.jsp">Thông tin cá nhân</a>
                            <a class="sub-item" href="shipping-info.jsp">Thông giao hàng</a>
                            <a class="sub-item" href="order-history.jsp">Lịch sử mua hàng</a>
                            <a class="sub-item" href="change-password.jsp">Đổi mật khẩu</a>
                            <a class="sub-item" href="index.jsp">Đăng xuất</a>
                        </div>
                    </div>
                </div>
                <a class="sub-group" href="shopping-cart.jsp">
                    <img src="images/grocery-store.png" height="24" width="24"/>
                    <p class="text">
                        Giỏ hàng
                    </p>
                    <span id="cart-count" class="badge">0</span>
                </a>
            </div>
        </div>
    </section>
    <section class="section-bottom">
        <div class="container">
            <nav>
                <a class="item" href="index.jsp">Trang chủ</a>
                <a class="item" href="about-us.jsp">Giới thiệu</a>
                <div class="item">
                    Danh mục sản phẩm
                    <div class="sub">
                        <a class="sub-item" href="category-products.jsp">Tất cả sản phẩm</a>
                        <a class="sub-item" href="category-products.jsp">Sản phẩm mới</a>
                        <a class="sub-item" href="category-products.jsp">Sản phẩm bán chạy</a>
                        <a class="sub-item" href="category-products.jsp">Đặc sản miền Bắc</a>
                        <a class="sub-item" href="category-products.jsp">Đặc sản miền Trung</a>
                        <a class="sub-item" href="category-products.jsp">Đặc sản miền Nam</a>
                        <a class="sub-item" href="category-products.jsp">Mứt</a>
                        <a class="sub-item" href="category-products.jsp">Trà</a>
                        <a class="sub-item" href="category-products.jsp">Bánh</a>
                        <a class="sub-item" href="category-products.jsp">Lạp xưởng</a>
                    </div>
                </div>
                <a class="item" href="promotions.jsp">Khuyến mãi / ưu đãi</a>
                <a class="item" href="blog-news.jsp">Tin tức / blog</a>
            </nav>
        </div>
    </section>
</header>

<main>
    <section>
        <div class="container">
            <div class="title-panel">
                <h2>Phiếu giảm giá</h2>
            </div>
            <div class="voucher-panel">
                <form method="get">
                    <input class="enter-voucher" name="enter-voucher" type="text"
                           placeholder="Nhập mã phiếu giảm giá...">
                    <button class="enter-voucher-button" type="submit">Áp dụng</button>
                </form>
                <div class="voucher-list">
                    <div class="voucher">
                        <img class="voucher-image" src="images/coupon.png"/>
                        <div class="voucher-text">
                            <p><strong>Phiếu giảm giá 10%</strong></p>
                            <p>Áp dụng cho các đơn hàng có tống giá trị trên 199k</p>
                            <p>Hạn sử dụng: 08/11/2025</p>
                        </div>
                        <div class="voucher-button">
                            <button class="select-button" onclick="location.href='payment-info.jsp'">Chọn</button>
                        </div>
                    </div>
                    <div class="voucher">
                        <img class="voucher-image" src="images/coupon.png"/>
                        <div class="voucher-text">
                            <p><strong>Phiếu giảm giá 20%</strong></p>
                            <p>Áp dụng cho các đơn hàng có tống giá trị trên 299k</p>
                            <p>Hạn sử dụng: 08/11/2025</p>
                        </div>
                        <div class="voucher-button">
                            <button class="select-button" onclick="location.href='payment-info.jsp'">Chọn</button>
                        </div>
                    </div>
                    <div class="voucher">
                        <img class="voucher-image" src="images/coupon.png"/>
                        <div class="voucher-text">
                            <p><strong>Phiếu giảm giá 30%</strong></p>
                            <p>Áp dụng cho các đơn hàng có tống giá trị trên 399k</p>
                            <p>Hạn sử dụng: 08/11/2025</p>
                        </div>
                        <div class="voucher-button">
                            <button class="select-button" onclick="location.href='payment-info.jsp'">Chọn</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>

<footer>
    <section class="section-top">
        <div class="container">
            <div class="info">
                <h3>Thông tin liên hệ</h3>
                <ul>
                    <li>Công ty TNHH DacSanVungMien</li>
                    <li>Địa chỉ: Trường Đại học Nông Lâm TP.HCM</li>
                    <li>Hotline: 0921955395</li>
                    <li>Email: 23130227@st.hcmuaf.edu.vn</li>
                    <li>Facebook: DacSanVungMien</li>
                    <li>Website: dacsanvungmien.com</li>
                </ul>
            </div>
            <div class="ho-tro-khach-hang">
                <h4>Hỗ trợ khách hàng</h4>
                <a href="faq.jsp">Câu hỏi thường gặp</a>
                <a href="order-payment-guide.jsp">Hướng dẫn đạt hàng và thanh toán</a>
                <a href="shipping-policy.jsp">Chính sách giao hàng</a>
                <a href="return-policy.jsp">Chính sách đổi trả</a>
            </div>
            <div class="social">
                <a href="">
                    <img src="images/facebook.png" height="64" width="64"/>
                </a>
                <a href="">
                    <img src="images/instagram.png" height="64" width="64"/>
                </a>
                <a href="">
                    <img src="images/tik-tok.png" height="64" width="64"/>
                </a>
            </div>
        </div>
    </section>
    <section class="section-bottom">
        <div class="container">
            <p>Copyright 2025 ©. Designed by Nhóm 13</p>
        </div>
    </section>
</footer>
</body>
</html>