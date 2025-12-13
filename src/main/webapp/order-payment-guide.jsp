<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hướng dẫn đặt hàng và thanh toán</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/order-payment-guide.css">
</head>
<body>
<%@ include file="header.jsp" %>

<main>
    <section class="Huong-dan">
        <div class="container">
            <h1>Hướng dẫn đặt hàng & thanh toán</h1>
            <p>Chúng tôi mang đến trải nghiệm mua sắm đặc sản vùng miền dễ dàng, tiện lợi. Dưới đây là các bước hướng dẫn cụ thể để bạn có thể đặt hàng nhanh chóng nhất. </p>

            <div class="step">
                <h2>Bước 1: Chọn sản phẩm bạn yêu thích</h2>
                <p>Truy cập vào danh mục sản phẩm và chọn món đặc sản bạn muốn mua. Bạn có thể xem thông tin chi tiết, giá cả và đánh giá của từng sản phẩm.</p>
                <img src="https://i.postimg.cc/kXNB63y3/danhmucsanpham.png" alt="Chọn sản phẩm" class="guide-image"/>
            </div>
            <div class="step">
                <h2>Bước 2: Thêm sản phẩm vào giỏ hàng</h2>
                <p>Nhấn nút <strong>“Thêm vào giỏ hàng”</strong> để lưu sản phẩm. Bạn có thể tiếp tục mua sắm hoặc vào giỏ hàng để kiểm tra lại đơn hàng.</p>
                <img src="https://i.postimg.cc/sgp9gNMV/chitiecsanpham.png" alt="Thêm vào giỏ hàng" class="guide-image"/>
            </div>
            <div class="step">
                <h2>Bước 3: Đặt đơn hàng</h2>
                <p>Sau khi kiểm tra giỏ hàng, bạn chọn <strong>“Đặt hàng”</strong></p>
                <img src="https://i.postimg.cc/zvFRTVgT/giohang.png" alt="Đặt đơn hàng" class="guide-image"/>
                
            </div>
            <div class="step">
                <h2>Bước 4: Thanh toán đơn hàng</h2>
                <p>Sau khi bấm đặt hàng, bạn kiểm tra xem đủ sản phẩm bạn muốn mua hay chưa. Nếu đã đủ, bạn vui lòng điển đầy đủ thông tin nhận hàng và chọn hình thức thanh toán. Sau đó hãy nhấm nút <strong>"Thanh toán</strong> để hoàn tất đơn hàng</p>
                <img src="https://i.postimg.cc/4xsR8nh6/thanhtoan.png" alt="Thanh toán đơn hàng" class="guide-image"/>

            </div>
            <div class="step">
                <h2>Bước 5: Xác nhận & nhận hàng</h2>
                <p>Nhân viên của chúng tôi sẽ liên hệ xác nhận đơn hàng. Đơn hàng sẽ được giao tận nơi theo thời gian dự kiến.</p>
            </div>
        </div>
    </section>
</main>


<%@ include file="footer.jsp" %>
</body>
</html>