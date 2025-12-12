<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/global.css">

</head>
<body>
<%@ include file="header.jsp" %>

<main>
    <div id="login">Đăng Nhập</div>
    <div class="form-group">
        <label for="username" class="account">Email:</label>
        <input type="text" id="username" placeholder="Nhập Email">
    </div>
    <div class="form-group">
        <label for="pass" class="pass">Mật khẩu:</label>
        <input type="password" id="pass" name="password" placeholder="Nhập mật khẩu">
    </div>
    <div class="remember-register">
        <a href="register.jsp" title="Đăng ký tài khoản">Đăng ký tài khoản</a>
    </div>
    <button type="button" id="login-btn">Đăng nhập</button>
    <div class="forget">
        <a href="forgot-password.jsp" title="Quên mật khẩu">Quên mật khẩu</a>
    </div>
</main>

<%@ include file="footer.jsp" %>
</body>
</html>