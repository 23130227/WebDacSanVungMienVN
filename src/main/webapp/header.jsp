<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.ProductCategory" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

                    <c:choose>

                        <c:when test="${not empty sessionScope.user}">
                            <img src="images/user.png" height="24" width="24"/>

                            <div class="text-login">
                                    ${sessionScope.user.fullName}

                                <div class="sub-login">
                                    <a class="sub-item" href="personal-info.jsp">Thông tin cá nhân</a>
                                    <a class="sub-item" href="shipping-info.jsp">Thông tin giao hàng</a>
                                    <a class="sub-item" href="order-history.jsp">Lịch sử mua hàng</a>
                                    <a class="sub-item" href="change-password.jsp">Đổi mật khẩu</a>
                                    <a class="sub-item" href="logout">Đăng xuất</a>
                                </div>
                            </div>
                        </c:when>


                        <c:otherwise>
                            <img src="images/user.png" height="24" width="24"/>
                            <a class="text" href="login.jsp">Đăng nhập</a>
                            <p class="text">/</p>
                            <a class="text" href="register.jsp">Đăng ký</a>
                        </c:otherwise>

                    </c:choose>

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
                        <c:forEach items="${topProductCategories}" var="tpc">
                            <a class="sub-item" href="category-products.jsp">${tpc.getName()}</a>
                        </c:forEach>
                        <a class="sub-item" href="category-products.jsp">Xem thêm...</a>
                    </div>
                </div>
                <a class="item" href="promotions.jsp">Khuyến mãi / ưu đãi</a>
                <a class="item" href="blog-news.jsp">Tin tức / blog</a>
            </nav>
        </div>
    </section>
</header>