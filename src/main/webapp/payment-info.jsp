<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thông tin thanh toán</title>
    <link rel="stylesheet" href="css/payment-info.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="css/global.css">
    <script src="js/ThanhToan.js"></script>

</head>
<body>
<%@ include file="header.jsp" %>

<main>
    <h1 class="title">Thông tin thanh toán</h1>
    <section class="section-thanh-toan">
        <div class="information">
            <h2>Thông tin giao hàng</h2>

            <div class="table-information">
                <div class="row">
                    <div class="address-container">
                        <div class="address-info">
                            <p><strong>Nguyễn Văn A</strong> | 0123456789</p>
                            <p>123 Đường Linh Trung, Phường Linh Trung</p>
                            <p>Thành phố Thủ Đức, TP. Hồ Chí Minh</p>
                        </div>
                        <a href="shipping-info.jsp">
                            <div class="change">
                                <button class="change-btn"><i class="fa-solid fa-arrows-rotate"></i>Thay đổi</button>
                            </div>
                        </a>
                    </div>
                </div>


                <div class="row">
                    <textarea id="message" name="message" rows="4" placeholder="Lưu ý cho người bán"></textarea>
                </div>

                <a class="voucher-section" href="discount-vouchers.jsp?mode=select">
                    <div class="voucher-panel">
                        <img class="voucher-image" src="images/coupon.png"/>
                        <p class="voucher-text">Sử dụng <strong>Phiếu giảm giá</strong></p>
                    </div>
                    <i class="fa-solid fa-angle-right"></i>
                </a>

                <div class="choosepay">
                    <label class="payment-option">
                        <input type="radio" name="payment" value="Thanh toán sau khi nhận hàng" checked>
                        <span class="custom-radio"></span>
                        <span class="text">Thanh toán sau khi nhận hàng</span>
                    </label>

                    <label class="payment-option">
                        <input type="radio" name="payment" value="Chuyển khoản ngân hàng">
                        <span class="custom-radio"></span>
                        <span class="text">Chuyển khoản ngân hàng</span>
                    </label>
                </div>

            </div>
            <button type="button" onclick="location.href='ThanhToanOnline.html'">Thanh toán</button>
        </div>
        <div class="listItem">
            <h>Danh sách đơn hàng</h>
            <div class="listbuy">
                <div class="listbuyItem">
                    <img src="images/keodua.png"/>
                    <span>Kẹo dừa x 1</span>
                    <span class="price">40.000 đ</span>
                </div>
                <div class="listbuyItem">
                    <img src="images/banhpia.png"/>
                    <span>Bánh pía x 1</span>
                    <span class="price">30.000 đ</span>
                </div>
            </div>
            <table>
                <thead>
                <tr>
                    <th>Sản phẩm</th>
                    <th>Giá</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>Tổng số tiền</th>
                    <th>70.000 đ</th>
                </tr>
                </tfoot>
            </table>
        </div>
    </section>
</main>

<%@ include file="footer.jsp" %>
</body>
</html>