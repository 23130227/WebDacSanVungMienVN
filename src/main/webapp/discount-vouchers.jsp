<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Phiếu giảm giá</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/discount-vouchers.css">
    <script src="js/discount-vouchers.js" defer></script>
</head>
<body>
<%@ include file="header.jsp" %>

<main>
    <section>
        <div class="container">
            <div class="title-panel">
                <h2>Phiếu giảm giá</h2>
            </div>
            <div class="voucher-panel">
                <form method="get">
                    <input class="enter-voucher" name="enter-voucher" type="text"
                           placeholder="Nhập mã phiếu giảm giá...">
                    <button class="enter-voucher-button" type="submit">Áp dụng</button>
                </form>
                <div class="voucher-list">
                    <div class="voucher">
                        <img class="voucher-image" src="images/coupon.png"/>
                        <div class="voucher-text">
                            <p><strong>Phiếu giảm giá 10%</strong></p>
                            <p>Áp dụng cho các đơn hàng có tống giá trị trên 199k</p>
                            <p>Hạn sử dụng: 08/11/2025</p>
                        </div>
                        <div class="voucher-button">
                            <button class="select-button" onclick="location.href='payment-info.jsp'">Chọn</button>
                        </div>
                    </div>
                    <div class="voucher">
                        <img class="voucher-image" src="images/coupon.png"/>
                        <div class="voucher-text">
                            <p><strong>Phiếu giảm giá 20%</strong></p>
                            <p>Áp dụng cho các đơn hàng có tống giá trị trên 299k</p>
                            <p>Hạn sử dụng: 08/11/2025</p>
                        </div>
                        <div class="voucher-button">
                            <button class="select-button" onclick="location.href='payment-info.jsp'">Chọn</button>
                        </div>
                    </div>
                    <div class="voucher">
                        <img class="voucher-image" src="images/coupon.png"/>
                        <div class="voucher-text">
                            <p><strong>Phiếu giảm giá 30%</strong></p>
                            <p>Áp dụng cho các đơn hàng có tống giá trị trên 399k</p>
                            <p>Hạn sử dụng: 08/11/2025</p>
                        </div>
                        <div class="voucher-button">
                            <button class="select-button" onclick="location.href='payment-info.jsp'">Chọn</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>

<%@ include file="footer.jsp" %>
</body>
</html>