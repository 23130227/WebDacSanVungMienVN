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

    <form action="change-password" method="post">
        <div class="change-pass">
            <label>Mật khẩu hiện tại:</label>
            <input type="password" name="oldPassword" required>

            <label>Mật khẩu mới:</label>
            <input type="password" name="newPassword" required>

            <label>Nhập lại mật khẩu:</label>
            <input type="password" name="confirmPassword" required>
        </div>

        <button class="comfirm-button" type="submit">Xác nhận</button>
    </form>

</main>

<%@ include file="footer.jsp" %>
</body>
</html>