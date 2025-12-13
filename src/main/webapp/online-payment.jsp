<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thanh toán online</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="css/online-payment.css">
</head>
<body>
<%@ include file="header.jsp" %>

<main>
    <div class="title">Thanh toán Online</div>
    <div class ="payonline">
        <div class="textqr">
            <h1>Quét mã bằng ngân hàng bạn chọn</h1 >
            <h2>Thanh toán qua bất kỳ ngân hàng hoặc ví điện tử nào</h2>
        </div>
        <div class="qr">
            <img src="images/qrcode_273266081_b62d8ebe95ba10a0757d30a9dbeea78b.png"/>
            <div class="information-qr">
                <p>BIDV</p>
                <p>0123456789</p>
                <p>Nguyễn Văn A</p>
            </div>
        </div>
        <button type="button" onclick="location.href='ThanhCong.html?mode=select'">Thanh toán đã hoàn tất</button>
    </div>
</main>

<%@ include file="footer.jsp" %>
</body>
</html>