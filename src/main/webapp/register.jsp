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
    <c:if test="${not empty error}">
        <p style="color:red; text-align:center">${error}</p>
    </c:if>

    <c:if test="${not empty message}">
        <p style="color:green; text-align:center">${message}</p>
    </c:if>

    <form class="signup" action="register" method="post">
        <div class="signup">
            <label class="account">Email:</label>
            <input type="email" name="email" placeholder="Nhập Email" required>
            <label class="pass" id>Mật khẩu:</label>
            <input type="password" name="password" placeholder="Nhập mật khẩu" required>
            <label class="pass" id>Nhập lại mật khẩu:</label>
            <input type="password" name="rePassword" placeholder="Nhập lại mật khẩu" required>
            <button type="submit">Đăng ký</button>
        </div>
    </form>
</main>

<%@ include file="footer.jsp" %>
</body>
</html>