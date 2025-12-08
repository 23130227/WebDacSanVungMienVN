<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Chính sách giao hàng</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/shipping-policy.css">
</head>
<body>
<header>
    <section class="section-top">
        <div class="container">
            <a class="text text-logo" href="index.jsp">DacSanVungMien</a>
            <form class="search-bar" method="get">
                <input class="search-input" type="text" placeholder="Tìm kiếm sản phẩm...">
                <button class="search-button" type="button" onclick="location.href='search-results.jsp'">
                    <img src="images/search.png" height="24" width="24"/>
                </button>
            </form>
            <div class="group">
                <p class="text">
                    Hotline: 0921955395
                </p>
                <div class="sub-group">
                    <img src="images/user.png" height="24" width="24"/>
                    <a class="text" href="login.jsp">
                        Đăng nhập
                    </a>
                    <p class="text">/</p>
                    <a class="text" href="register.jsp">
                        Đăng ký
                    </a>
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
            <div class="policy-section">
                <div class="policy-title">
                    <h1>Chính sách giao hàng</h1>

                </div>
                <div class="section">
                    <h2>1. Thời gian giao hàng</h2>
                    <p>Sau khi đơn hàng được xác nhận, chúng tôi sẽ tiến hành xử lý và giao hàng trong vòng <strong>24
                        giờ</strong> (áp dụng trong giờ hành chính).</p>
                    <p>Giờ làm việc: <strong>08:00 – 18:00 từ thứ 2 đến thứ 7</strong>, <strong>08:00 – 12:00 Chủ
                        nhật</strong>. Ngoài giờ này, bạn vẫn có thể đặt hàng, chúng tôi sẽ xử lý sớm nhất.</p>
                </div>

                <div class="section">
                    <h2>2. Khu vực & điều kiện giao hàng</h2>

                    <h3>2.1 Giao hàng nội thành</h3>
                    <ul>
                        <li>Áp dụng cho các quận nội thành (VD: Quận 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, Tân Bình, Phú
                            Nhuận, Tân Phú, Bình Tân).
                        </li>
                        <li><strong>Miễn phí giao hàng</strong> cho đơn từ <strong>500.000 đ</strong> trở lên.</li>
                        <li>Đơn dưới 500.000 đ phụ thu phí ship <strong>30.000 đ</strong>.</li>
                        <li>Đặt ngoài giờ hành chính: miễn phí với đơn từ <strong>900.000 đ</strong>, đơn dưới mức này
                            phụ thu <strong>30.000 đ</strong>.
                        </li>
                    </ul>

                    <h3>2.2 Giao hàng ngoại thành & tỉnh</h3>
                    <ul>
                        <li>Áp dụng cho các quận ngoại thành & tỉnh (VD: Quận 9, Củ Chi, Nhà Bè, Hóc Môn, Bình Chánh,
                            Thủ Đức, Gò Vấp; các tỉnh miền Tây, Tây Nguyên, Nam Bộ).
                        </li>
                        <li>Nhận đơn từ <strong>2.000.000 đ</strong>, tính thêm phí thùng + phí gửi xe nếu có.</li>
                        <li>Miễn phí tiền thùng nếu đơn hàng từ <strong>3.000.000 đ</strong> trở lên.</li>
                        <li>Khách hàng chịu trách nhiệm vận chuyển từ nhà xe về nơi nhận.</li>
                    </ul>
                </div>

                <div class="section">
                    <h2>3. Thanh toán</h2>
                    <ul>
                        <li>Nội thành: thanh toán khi nhận hàng (COD) hoặc chuyển khoản trước.</li>
                        <li>Ngoại thành & tỉnh: thanh toán trước qua chuyển khoản mới giao hàng.</li>
                    </ul>
                </div>

                <div class="section">
                    <h2>4. Mua hàng trực tiếp</h2>
                    <p>Bạn có thể đến trực tiếp cửa hàng tại: <strong>Trường Đại học Nông Lâm TP.HCM</strong></p>
                    <p>Giờ mở cửa: <strong>08:00 - 17:00 từ thứ 2 đến thứ 7</strong>, <strong>08:00 - 12:00 Chủ
                        nhật</strong></p>
                    <p>Hotline tư vấn: <strong> 0921955395</strong></p>
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
                <a href="ChinhSachGiaoHang.html">Chính sách giao hàng</a>
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