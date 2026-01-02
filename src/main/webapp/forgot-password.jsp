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
    <c:if test="${not empty error}">
        <p style="color:red; text-align:center;">${error}</p>
    </c:if>

    <c:if test="${not empty success}">
        <p style="color:green; text-align:center;">${success}</p>
    </c:if>

    <form action="forgot-password" method="post">
        <div class="table-forget_password">
            <div class="comfirm">
                <label for="email">Email:</label>
                <input type="text" id="email" name="email" placeholder="Nhập email">

                <button type="submit" name="action" value="sendOtp">
                    Gửi OTP
                </button>

                <label for="email">OTP:</label>
                <input type="text" name="OTP" placeholder="Nhập OTP">
            </div>

            <div class="Rewrite-pass">
                <label for="newPass">Mật khẩu mới:</label>
                <input type="password" id="pass" name="newPassword" placeholder="Nhập mật khẩu mới">
                <label for="comfirmPass">Nhập lại mật khẩu mới:</label>
                <input type="password" id="rewritewpass" name="confirmPassword" placeholder="Nhập lại mật khẩu mới">
            </div>
        </div>
        <button class="comfirm-button" type="submit" name="action" value="resetPassword">
            Xác nhận
        </button>

    </form>
</main>

<%@ include file="footer.jsp" %>
</body>
</html>
