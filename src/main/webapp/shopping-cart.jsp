<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Giỏ hàng</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/shopping-cart.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <script src="js/shopping-cart.js"></script>
</head>
<body>
<%@ include file="header.jsp" %>

<main>
    <section class="cart-section">
        <h1>Giỏ hàng của bạn</h1>
        <c:choose>
            <c:when test="${not empty sessionScope.cart and not empty sessionScope.cart.items}">
                <div class="cart-container">
                    <c:forEach items="${sessionScope.cart.items}" var="item">
                        <div class="cart-item">
                            <div class="item-left">
                                <img src="${item.product.image}"/>
                                <button class="remove-btn">Xóa</button>
                            </div>

                            <div class="item-middle">${item.product.name}</div>

                            <div class="item-right">
                                <c:choose>
                                    <c:when test="${item.product.discountPercentage > 0}">
                                        <p class="price">${item.product.format(item.product.discountPrice)}đ</p>
                                    </c:when>
                                    <c:otherwise>
                                        <p class="price">${item.product.format(item.product.price)}đ</p>
                                    </c:otherwise>
                                </c:choose>
                                <div class="quantity-controls">
                                    <button class="decrease-button">
                                        <i class="fa-solid fa-minus"></i>
                                    </button>
                                    <input type="text" class="quantity-input" name="quantity"
                                           value="${item.quantity}"
                                           readonly>
                                    <button class="increase-button">
                                        <i class="fa-solid fa-plus"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="cart-total">
                        <p>Tổng cộng: <span
                                id="total-price">${sessionScope.cart.format(sessionScope.cart.total)}đ</span></p>
                        <button class="order-btn" onclick="location.href='payment-info.jsp'">
                            <i class="fa-solid fa-cart-shopping"></i>
                            Đặt hàng
                        </button>
                    </div>
                </div>
            </c:when>
            <c:otherwise>
                <p>Giỏ hàng của bạn đang trống.</p>
            </c:otherwise>
        </c:choose>
    </section>
</main>


<%@ include file="footer.jsp" %>
</body>
</html>