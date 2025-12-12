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
        <div class="cart-container">
            <div class="cart-item">
                <div class="item-left">
                    <img src="images/keodua.png" alt="Kẹo dừa"/>
                    <button class="remove-btn">Xóa</button>
                </div>

                <div class="item-middle">Kẹo dừa</div>

                <div class="item-right">
                    <p class="price">40.000đ</p>
                    <div class="quantity-controls">
                        <button class="decrease-button">
                            <i class="fa-solid fa-minus"></i>
                        </button>
                        <input type="text" class="quantity-input" value="1" readonly>
                        <button class="increase-button">
                            <i class="fa-solid fa-plus"></i>
                        </button>
                    </div>
                </div>
            </div>

            <div class="cart-item">
                <div class="item-left">
                    <img src="images/banhpia.png" alt="Bánh pía"/>
                    <button class="remove-btn">Xóa</button>
                </div>
                <div class="item-middle">Bánh pía</div>
                <div class="item-right">
                    <p class="price">30.000đ</p>
                    <div class="quantity-controls">
                        <button class="decrease-button">
                            <i class="fa-solid fa-minus"></i>
                        </button>
                        <input type="text" class="quantity-input" value="1" readonly>
                        <button class="increase-button">
                            <i class="fa-solid fa-plus"></i>
                        </button>
                    </div>
                </div>
            </div>

            <div class="cart-total">
                <p>Tổng cộng: <span id="total-price">75.000đ</span></p>
                <button class="order-btn" onclick="location.href='payment-info.jsp'">
                    <i class="fa-solid fa-cart-shopping"></i>
                    Đặt hàng
                </button>
            </div>

        </div>
    </section>
</main>


<%@ include file="footer.jsp" %>
</body>
</html>