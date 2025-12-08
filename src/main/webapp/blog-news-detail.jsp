<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Chi tiết tin tức blog</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/blog-news-detail.css">
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
        <div class = "container">
            <article class="news-detail">
                <h1>Cách làm lạp xưởng ngon tại nhà</h1>
                <div class="news-meta">Tác giả: Bếp Nhà Việt - Ngày đăng: 10/11/2025</div>
                <img src="https://cdn.tgdd.vn/Files/2020/10/20/1300396/cach-lam-lap-xuong-tuoi-can-duoc-tai-nha-chua-ngot-chuan-vi-202202221426155824.jpg" alt="Lạp xưởng ngon tại nhà">
                <div class="news-content">
                    <p>Lạp xưởng là món ăn truyền thống không thể thiếu trong dịp Tết của người Việt, đặc biệt là ở miền Tây. Với hương vị đậm đà, thơm ngon và có thể bảo quản được lâu, món ăn này dễ làm hơn bạn tưởng đấy!</p>
                    <h2>Nguyên liệu cần chuẩn bị</h2>
                    <ul>
                        <li>Thịt heo nạc vai: 1 kg</li>
                        <li>Mỡ heo: 200g</li>
                        <li>Đường, muối, tiêu, rượu trắng, nước tương</li>
                        <li>Ruột heo khô (hoặc ruột collagen) để nhồi</li>
                    </ul>
                    <h2>Các bước thực hiện</h2>
                    <p><strong>Bước 1:</strong> Thịt heo rửa sạch, cắt nhỏ rồi xay hoặc băm nhuyễn. Mỡ heo luộc sơ, cắt hạt lựu.</p>
                    <p><strong>Bước 2:</strong> Trộn đều hỗn hợp thịt và mỡ với đường, muối, tiêu, rượu trắng và nước tương. Để ướp ít nhất 4 tiếng hoặc qua đêm.</p>
                    <p><strong>Bước 3:</strong> Nhồi hỗn hợp vào ruột heo, buộc từng đoạn dài khoảng 15cm. Dùng kim châm vài lỗ nhỏ để thoát khí.</p>
                    <p><strong>Bước 4:</strong> Phơi nắng hoặc sấy nhẹ trong 2–3 ngày cho khô đều, có thể bảo quản trong ngăn mát tủ lạnh đến 1 tháng.</p>
                    <h2>Thưởng thức và bảo quản</h2>
                    <p>Khi ăn, bạn có thể hấp hoặc chiên vàng. Lạp xưởng dùng với cơm trắng, xôi, hoặc bánh bao đều rất ngon.</p>
                </div>
                <div class="news-tags">
                    <span>ẩm thực Việt</span>
                    <span>lạp xưởng</span>
                    <span>món truyền thống</span>
                </div>
                <div class="news-navigation">
                    <a href="#">« Bài trước</a>
                    <a href="#">Bài sau »</a>
                </div>
            </article>
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