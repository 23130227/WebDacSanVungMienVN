<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header>
    <section class="section-top">
        <div class="container">
            <a class="text text-logo" href="TrangChu.html">DacSanVungMien</a>
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
                <a class="item" href="TrangChu.html">Trang chủ</a>
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