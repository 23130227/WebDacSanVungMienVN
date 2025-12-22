<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Đổi mật khẩu</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/change-password.css">

</head>
<body>
<%@ include file="header.jsp" %>

<main>
    <div id="title">Thay đổi mật khẩu</div>
    <c:if test="${not empty error}">
        <p style="color:red; text-align:center;">${error}</p>
    </c:if>

    <c:if test="${not empty success}">
        <p style="color:green; text-align:center;">${success}</p>
    </c:if>

    <form action="change-password" method="post" class="change-pass">

        <div class="change-pass">
            <label for="pass">Mật khẩu hiện tại:</label>
            <input type="password" id="oldpass" name="pass" placeholder="Nhập mật khẩu hiện tại">
            <label for="pass">Mật khẩu mới:</label>
            <input type="password" id="pass" name="pass" placeholder="Nhập mật khẩu mới">
            <label for="pass">Nhập lại mật khẩu mới:</label>
            <input type="password" id="rewritewpass" name="pass" placeholder="Nhập lại mật khẩu mới">
        </div>
    </form>
    <button class="comfirm-button" type="button">Xác nhận</button>
</main>

<%@ include file="footer.jsp" %>
</body>
</html>