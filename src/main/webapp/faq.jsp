<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Câu hỏi thường gặp</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/faq.css">
    <script src="js/faq.js" defer></script>

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
            <div class="faq-section">
                <div class="faq-title">
                    <h1>Câu hỏi thường gặp</h1>
                </div>

                <div class="faq-item">
                    <div class="faq-question">1. Web bán đặc sản này có đảm bảo hàng thật không?</div>
                    <div class="faq-answer">
                        Chúng tôi chỉ hợp tác với các cơ sở sản xuất uy tín tại từng vùng miền, cam kết **đặc sản chính
                        gốc**.
                        Mỗi sản phẩm đều có hình ảnh thực tế, thông tin xuất xứ và hướng dẫn sử dụng.
                        <div class="warning">Cảnh báo: Tránh mua hàng từ các website không rõ nguồn gốc hoặc giá rẻ bất
                            thường, nguy cơ lừa đảo rất cao.
                        </div>
                    </div>
                </div>

                <div class="faq-item">
                    <div class="faq-question">2. Tôi có thể thanh toán bằng những hình thức nào?</div>
                    <div class="faq-answer">
                        Chúng tôi hỗ trợ các hình thức thanh toán:
                        - Chuyển khoản ngân hàng
                        - Thanh toán qua thẻ tín dụng/thẻ ghi nợ
                        - Ví điện tử (Momo, ZaloPay, VNPay)
                        - COD (nhận hàng trả tiền trực tiếp)
                        <div class="warning">Cảnh báo: Không chuyển tiền trực tiếp cho người bán ngoài hệ thống của
                            chúng
                            tôi, tránh bị lừa đảo.
                        </div>
                    </div>
                </div>

                <div class="faq-item">
                    <div class="faq-question">3. Làm sao để biết sản phẩm còn hàng?</div>
                    <div class="faq-answer">
                        Trên mỗi trang sản phẩm sẽ hiển thị tình trạng kho: “Còn hàng” hoặc “Hết hàng”.
                        Nếu sản phẩm gần hết, bạn sẽ thấy thông báo số lượng còn lại để đặt mua kịp thời.
                    </div>
                </div>

                <div class="faq-item">
                    <div class="faq-question">4. Tôi muốn kiểm tra chất lượng khi nhận hàng, có được không?</div>
                    <div class="faq-answer">
                        Hoàn toàn được. Bạn có thể mở gói hàng, kiểm tra sản phẩm và **kiểm tra tem, hạn sử dụng, nhãn
                        mác**
                        trước khi thanh toán nếu chọn hình thức COD.
                        <div class="warning">Cảnh báo: Không ký nhận nếu sản phẩm bị hư hỏng hoặc không đúng cam kết.
                            Ghi
                            lại hình ảnh để khiếu nại.
                        </div>
                    </div>
                </div>

                <div class="faq-item">
                    <div class="faq-question">5. Web có hỗ trợ giao hàng đi các tỉnh không?</div>
                    <div class="faq-answer">
                        Chúng tôi giao hàng trên toàn quốc thông qua các đơn vị vận chuyển uy tín. Thời gian vận chuyển
                        thường từ 1-5 ngày tùy tỉnh thành.
                        Đơn hàng sẽ có **mã vận đơn để theo dõi** trực tuyến.
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
                <a href="CauHoiThuongGap.html">Câu hỏi thường gặp</a>
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