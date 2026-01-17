<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Khuyến mãi ưu đãi</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/promotions.css">
</head>
<body>
<%@ include file="header.jsp" %>

<main>
    <section>
        <div class="container">
            <div class="nav-product-list">
                <div class="title-panel">
                    <img src="images/sale.png" height="32" width="32"/>
                    <h1 class="title">Khuyến mãi và ưu đãi</h1>
                    <img src="images/sale.png" height="32" width="32"/>
                </div>
                <div class="product-list">
                    <c:forEach items="${products}" var="p">
                        <div class="product">
                            <div class="sale-tag">
                                <c:if test="${p.getDiscountPercentage() > 0}">
                                    <p class="sale-percent">-${p.getDiscountPercentage()}%</p>
                                </c:if>
                            </div>
                            <a href="product-detail?id=${p.getId()}">
                                <img class="product-image" src="${p.getImage()}"/>
                            </a>
                            <a class="product-name" href="product-detail?id=${p.getId()}">
                                <h3>${p.getName()}</h3>
                            </a>
                            <div class="product-price">
                                <h4 class="new-price">
                                        ${p.format(p.discountPercentage > 0 ? p.discountPrice : p.price)}đ
                                </h4>
                                <c:if test="${p.discountPercentage > 0}">
                                    <h4 class="old-price">
                                            ${p.format(p.price)}đ
                                    </h4>
                                </c:if>
                            </div>
                            <a class="buy" href="add-cart?productId=${p.id}&quantity=1">Mua hàng</a>
                        </div>
                    </c:forEach>
                </div>
                <nav>
                    <c:choose>
                        <c:when test="${totalPages == 0}">
                            <h3>Chưa có sản phẩm nào!</h3>
                        </c:when>
                        <c:otherwise>
                            <c:choose>
                                <c:when test="${page > 1}">
                                    <a href="promotions?page=${page - 1}">
                                        Trang trước
                                    </a>
                                </c:when>
                                <c:otherwise>
                                    <a class="disabled">Trang trước</a>
                                </c:otherwise>
                            </c:choose>
                            <c:forEach var="i" begin="1" end="${totalPages}">
                                <a href="promotions?page=${i}"
                                   class="${i == page? 'active':''}">${i}</a>
                            </c:forEach>
                            <c:choose>
                                <c:when test="${page < totalPages}">
                                    <a href="promotions?page=${page + 1}">
                                        Trang sau
                                    </a>
                                </c:when>
                                <c:otherwise>
                                    <a class="disabled">Trang sau</a>
                                </c:otherwise>
                            </c:choose>
                        </c:otherwise>
                    </c:choose>
                </nav>
            </div>
        </div>
    </section>
</main>

<%@ include file="footer.jsp" %>
</body>
</html>