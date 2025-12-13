<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Chi tiết đơn hàng</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/order-detail.css">
</head>
<body>
<%@ include file="header.jsp" %>

<main>
    <section>
        <div class="container">
            <div class="title-panel">
                <h2>Đơn hàng #103327357747</h2>
            </div>
            <div class="order-details">
                <div class="info-panel">
                    <h3 class="info-title">Thông tin đơn hàng</h3>
                    <div class="info-row">
                        <p><strong>Mã đơn hàng:</strong></p>
                        <p>103327357747</p>
                    </div>
                    <div class="info-row">
                        <p><strong>Ngày đặt:</strong></p>
                        <p>03/11/2025</p>
                    </div>
                    <div class="info-row">
                        <p><strong>Trạng thái đơn hàng:</strong></p>
                        <p>Giao thành công</p>
                    </div>
                </div>
                <div class="product-list">
                    <a class="product" href="product-detail.jsp">
                        <div class="product-image-name">
                            <img class="product-image" src="images/lacxuong.png"/>
                            <p class="product-name">Lạp xưởng</p>
                        </div>
                        <div class="product-price-quantity">
                            <p class="product-price"><strong>70.000đ</strong></p>
                            <p class="product-quantity">SL: 1</p>
                        </div>
                    </a>
                    <a class="product" href="product-detail.jsp">
                        <div class="product-image-name">
                            <img class="product-image" src="images/banhdake.png"/>
                            <p class="product-name">Bánh đa kê</p>
                        </div>
                        <div class="product-price-quantity">
                            <p class="product-price"><strong>55.000đ</strong></p>
                            <p class="product-quantity">SL: 1</p>
                        </div>
                    </a>
                    <a class="product" href="product-detail.jsp">
                        <div class="product-image-name">
                            <img class="product-image" src="images/banhmexat.png"/>
                            <p class="product-name">Bánh mè xát</p>
                        </div>
                        <div class="product-price-quantity">
                            <p class="product-price"><strong>50.000đ</strong></p>
                            <p class="product-quantity">SL: 1</p>
                        </div>
                    </a>
                </div>
                <div class="info-panel">
                    <h3 class="info-title">Thông tin thanh toán</h3>
                    <div class="info-row">
                        <p><strong>Tổng tiền hàng:</strong></p>
                        <p>175.000đ</p>
                    </div>
                    <div class="info-row">
                        <p><strong>Phiếu giảm giá áp dụng:</strong></p>
                        <p>-29900đ</p>
                    </div>
                    <div class="info-row">
                        <p><strong>Tồng thanh toán:</strong></p>
                        <p>145.100đ</p>
                    </div>
                </div>
                <div class="info-panel">
                    <h3 class="info-title">Thông tin người nhận hàng</h3>
                    <div class="info-row">
                        <p><strong>Họ và tên:</strong></p>
                        <p>Nguyễn Văn A</p>
                    </div>
                    <div class="info-row">
                        <p><strong>Số điện thoại:</strong></p>
                        <p>0921955395</p>
                    </div>
                    <div class="info-row">
                        <p><strong>Địa chỉ nhận hàng:</strong></p>
                        <p>123 Đường ABC, Phường XYZ, Quận 1, Thành Phố Hồ Chí Minh</p>
                    </div>
                    <div class="info-row">
                        <p><strong>Lưu ý cho người bán:</strong></p>
                        <p>Giao vào buổi sáng</p>
                    </div>
                </div>
                <div class="button-panel">
                    <button class="reorder-button" onclick="location.href='shopping-cart.jsp';">Mua lại</button>
                </div>
            </div>
        </div>
    </section>
</main>

<%@ include file="footer.jsp" %>
</body>
</html>