<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thông tin thanh toán</title>
    <link rel="stylesheet" href="css/payment-info.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="css/global.css">
    <script src="js/ThanhToan.js"></script>

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
                        Nguyễn Văn A
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
    <h1 class="title">Thông tin thanh toán</h1>
    <section class="section-thanh-toan">
        <div class="information">
            <h2>Thông tin giao hàng</h2>

            <div class="table-information">
                <div class="row">
                    <div class="address-container">
                        <div class="address-info">
                            <p><strong>Nguyễn Văn A</strong> | 0123456789</p>
                            <p>123 Đường Linh Trung, Phường Linh Trung</p>
                            <p>Thành phố Thủ Đức, TP. Hồ Chí Minh</p>
                        </div>
                        <a href="shipping-info.jsp">
                            <div class="change">
                                <button class="change-btn"><i class="fa-solid fa-arrows-rotate"></i>Thay đổi</button>
                            </div>
                        </a>
                    </div>
                </div>


                <div class="row">
                    <textarea id="message" name="message" rows="4" placeholder="Lưu ý cho người bán"></textarea>
                </div>

                <a class="voucher-section" href="discount-vouchers.jsp?mode=select">
                    <div class="voucher-panel">
                        <img class="voucher-image" src="images/coupon.png"/>
                        <p class="voucher-text">Sử dụng <strong>Phiếu giảm giá</strong></p>
                    </div>
                    <i class="fa-solid fa-angle-right"></i>
                </a>

                <div class="choosepay">
                    <label class="payment-option">
                        <input type="radio" name="payment" value="Thanh toán sau khi nhận hàng" checked>
                        <span class="custom-radio"></span>
                        <span class="text">Thanh toán sau khi nhận hàng</span>
                    </label>

                    <label class="payment-option">
                        <input type="radio" name="payment" value="Chuyển khoản ngân hàng">
                        <span class="custom-radio"></span>
                        <span class="text">Chuyển khoản ngân hàng</span>
                    </label>
                </div>

            </div>
            <button type="button" onclick="location.href='ThanhToanOnline.html'">Thanh toán</button>
        </div>
        <div class="listItem">
            <h>Danh sách đơn hàng</h>
            <div class="listbuy">
                <div class="listbuyItem">
                    <img src="images/keodua.png"/>
                    <span>Kẹo dừa x 1</span>
                    <span class="price">40.000 đ</span>
                </div>
                <div class="listbuyItem">
                    <img src="images/banhpia.png"/>
                    <span>Bánh pía x 1</span>
                    <span class="price">30.000 đ</span>
                </div>
            </div>
            <table>
                <thead>
                <tr>
                    <th>Sản phẩm</th>
                    <th>Giá</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>Tổng số tiền</th>
                    <th>70.000 đ</th>
                </tr>
                </tfoot>
            </table>
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