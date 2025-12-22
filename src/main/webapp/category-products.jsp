<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sản phẩm theo danh mục</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/category-products.css">
    <script src="js/category-products.js" defer></script>
</head>
<body>
<%@ include file="header.jsp" %>

<main>
    <section class="section-category">
        <div class="container">
            <h2>Danh mục sản phẩm</h2>
            <div class="category-product">
                <div class="category-list">
                    <a href="category-products"
                       class="category ${activeMenu == 'all' ? 'active' : ''}">Tất cả
                        sản phẩm</a>
                    <a href="category-products?filter=new" class="category ${activeMenu == 'new' ? 'active' : ''}">Sản
                        phẩm mới</a>
                    <a href="category-products?filter=sold" class="category ${activeMenu == 'sold' ? 'active' : ''}">Sản
                        phẩm bán chạy</a>
                    <a href="category-products?region=north" class="category ${activeMenu == 'north' ? 'active' : ''}">Đặc
                        sản miền Bắc</a>
                    <a href="category-products?region=central"
                       class="category ${activeMenu == 'central' ? 'active' : ''}">Đặc sản miền Trung</a>
                    <a href="category-products?region=south" class="category ${activeMenu == 'south' ? 'active' : ''}">Đặc
                        sản miền Nam</a>
                    <c:forEach items="${productCategories}" var="pc">
                        <c:choose>
                            <c:when test="${activeMenu == 'category' && categoryId == pc.getId()}">
                                <a href="category-products?categoryId=${pc.getId()}"
                                   class="category active">${pc.getName()}</a>
                            </c:when>
                            <c:otherwise>
                                <a href="category-products?categoryId=${pc.getId()}"
                                   class="category">${pc.getName()}</a>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </div>
                <div class="nav-product-list">
                    <div class="product-list">
                        <c:forEach items="${categoryProducts}" var="cp">
                            <div class="product">
                                <div class="sale-tag">
                                    <c:if test="${cp.getDiscountPercentage() > 0}">
                                        <p class="sale-percent">-${cp.getDiscountPercentage()}%</p>
                                    </c:if>
                                </div>
                                <a href="product-detail.jsp">
                                    <img class="product-image" src="${cp.getImage()}"/>
                                </a>
                                <a class="product-name" href="product-detail.jsp">
                                    <h3>${cp.getName()}</h3>
                                </a>
                                <div class="product-price">
                                    <h4 class="new-price">
                                            ${cp.format(cp.discountPercentage > 0 ? cp.discountPrice : cp.price)}đ
                                    </h4>
                                    <c:if test="${cp.discountPercentage > 0}">
                                        <h4 class="old-price">
                                                ${cp.format(cp.price)}đ
                                        </h4>
                                    </c:if>
                                </div>
                                <a class="buy" href="product-detail.jsp">Mua hàng</a>
                            </div>
                        </c:forEach>
                    </div>
                    <nav>
                        <c:choose>
                            <c:when test="${page > 1}">
                                <a href="category-products?${not empty categoryId ? 'categoryId=' : ''}${categoryId}${not empty filter ? 'filter=' : ''}${filter}${not empty region ? 'region=' : ''}${region}&page=${page - 1}">
                                    Trang trước
                                </a>
                            </c:when>
                            <c:otherwise>
                                <a class="disabled">Trang trước</a>
                            </c:otherwise>
                        </c:choose>
                        <c:forEach var="i" begin="1" end="${totalPages}">
                            <a href="category-products?${not empty categoryId ? 'categoryId=' : ''}${categoryId}${not empty filter ? 'filter=' : ''}${filter}${not empty region ? 'region=' : ''}${region}&page=${i}"
                               class="${i == page? 'active':''}">
                                    ${i}</a>
                        </c:forEach>
                        <c:choose>
                            <c:when test="${page < totalPages}">
                                <a href="category-products?${not empty categoryId ? 'categoryId=' : ''}${categoryId}${not empty filter ? 'filter=' : ''}${filter}${not empty region ? 'region=' : ''}${region}&page=${page + 1}">
                                    Trang sau
                                </a>
                            </c:when>
                            <c:otherwise>
                                <a class="disabled">Trang sau</a>
                            </c:otherwise>
                        </c:choose>
                    </nav>
                </div>
            </div>
        </div>
    </section>
</main>

<%@ include file="footer.jsp" %>
</body>
</html>