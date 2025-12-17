<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Kết quả tìm kiếm</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/search-results.css">
</head>
<body>
<%@ include file="header.jsp" %>

<main>
    <section class="section-product">
        <div class="container">
            <h2 class="title">Kết quả tìm kiểm cho "${keyword}":</h2>
            <div class="nav-product-list">
                <div class="product-list">
                    <c:forEach items="${searchProducts}" var="sp">
                        <div class="product">
                            <div class="sale-tag">
                                <c:if test="${sp.getDiscountPercentage() > 0}">
                                    <p class="sale-percent">-${sp.getDiscountPercentage()}%</p>
                                </c:if>
                            </div>
                            <a href="product-detail.jsp">
                                <img class="product-image" src="${sp.getImage()}"/>
                            </a>
                            <a class="product-name" href="product-detail.jsp">
                                <h3>${sp.getName()}</h3>
                            </a>
                            <div class="product-price">
                                <h4 class="new-price">
                                        ${sp.format(sp.discountPercentage > 0 ? sp.discountPrice : sp.price)}đ
                                </h4>
                                <c:if test="${sp.discountPercentage > 0}">
                                    <h4 class="old-price">
                                            ${sp.format(sp.price)}đ
                                    </h4>
                                </c:if>
                            </div>
                            <a class="buy" href="product-detail.jsp">Mua hàng</a>
                        </div>
                    </c:forEach>
                </div>
                <nav>
                    <c:choose>
                        <c:when test="${totalPages == 0}">
                            <h3>Không tìm thấy sản phẩm nào!</h3>
                        </c:when>
                        <c:otherwise>
                            <c:choose>
                                <c:when test="${page > 1}">
                                    <a href="search-results?keyword=${keyword}&page=${page - 1}">
                                        Trang trước
                                    </a>
                                </c:when>
                                <c:otherwise>
                                    <a class="disabled">Trang trước</a>
                                </c:otherwise>
                            </c:choose>
                            <c:forEach var="i" begin="1" end="${totalPages}">
                                <a href="search-results?keyword=${keyword}&page=${i}"
                                   class="${i == page? 'active':''}">${i}</a>
                            </c:forEach>
                            <c:choose>
                                <c:when test="${page < totalPages}">
                                    <a href="search-results?keyword=${keyword}&page=${page + 1}">
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