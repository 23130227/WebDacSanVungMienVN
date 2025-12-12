<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Đăng ký</title>
    <link rel="stylesheet" href="css/register.css">
    <link rel="stylesheet" href="css/global.css">
</head>
<body>
<%@ include file="header.jsp" %>

<main>
    <div id="title">Đăng ký</div>
    <div class="signup">
        <label class="account">Email:</label>
        <input type="account" placeholder="Nhập Email">
        <label class="pass" id>Mật khẩu:</label>
        <input type="password" id="pass" name="password" placeholder="Nhập mật khẩu">
        <label class="pass" id>Nhập lại mật khẩu:</label>
        <input type="password" id="pass_Nhaplai" name="password" placeholder="Nhập lại mật khẩu">
        <button type="button">Đăng ký</button>
    </div>
</main>

<%@ include file="footer.jsp" %>
</body>
</html>