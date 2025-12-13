<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quên mật khẩu</title>
    <link rel="stylesheet" href="css/forgot-password.css">
    <link rel="stylesheet" href="css/global.css">
</head>
<body>
<%@ include file="header.jsp" %>

<main>
    <div id="title">Quên mật khẩu</div>
    <div class="table-forget_password">
        <div class="comfirm">
            <label for="email">Email:</label>
            <input type="text" id="email" name="email" placeholder="Nhập email">

            <button type="button">Gửi OTP</button>
            <label for="email">OTP:</label>
            <input type="text" name="OTP" placeholder="Nhập OTP">
        </div>

        <div class="Rewrite-pass">
            <label for="pass">Mật khẩu mới:</label>
            <input type="password" id="pass" name="pass" placeholder="Nhập mật khẩu mới">
            <label for="pass">Nhập lại mật khẩu mới:</label>
            <input type="password" id="rewritewpass" name="pass" placeholder="Nhập lại mật khẩu mới">
        </div>
    </div>
    <button class="comfirm-button" type="button">Xác nhận</button>
</main>

<%@ include file="footer.jsp" %>
</body>
</html>
