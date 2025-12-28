<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.ProductCategory" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Font Awesome CDN for star icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" integrity="sha512-..." crossorigin="anonymous" referrerpolicy="no-referrer" />
<header>
    <section class="section-top">
        <div class="container">
            <a class="text text-logo" href="${pageContext.request.contextPath}/home">DacSanVungMien</a>
            <form class="search-bar" method="get" action="search-results">
                <input class="search-input" type="text" name="keyword" placeholder="Tìm kiếm sản phẩm...">
                <button class="search-button" type="submit">
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
                <a class="item" href="${pageContext.request.contextPath}/home">Trang chủ</a>
                <a class="item" href="about-us.jsp">Giới thiệu</a>
                <div class="item">
                    Danh mục sản phẩm
                    <div class="sub">
                        <a class="sub-item" href="category-products">Tất cả sản phẩm</a>
                        <a class="sub-item" href="category-products?filter=new">Sản phẩm mới</a>
                        <a class="sub-item" href="category-products?filter=sold">Sản phẩm bán chạy</a>
                        <a class="sub-item" href="category-products?region=north">Đặc sản miền Bắc</a>
                        <a class="sub-item" href="category-products?region=central">Đặc sản miền Trung</a>
                        <a class="sub-item" href="category-products?region=south">Đặc sản miền Nam</a>
                        <c:forEach items="${productCategories}" var="c">
                            <a class="sub-item" href="category-products?categoryId=${c.getId()}">${c.getName()}</a>
                        </c:forEach>
                        <a class="sub-item" href="category-products">Xem thêm...</a>
                    </div>
                </div>
                <a class="item" href="promotions">Khuyến mãi / ưu đãi</a>
                <a class="item" href="blog-news.jsp">Tin tức / blog</a>
            </nav>
        </div>
    </section>
</header>