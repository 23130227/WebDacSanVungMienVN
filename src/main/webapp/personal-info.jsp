<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thông tin cá nhân</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/personal-info.css">
    <script src="js/personalInfo.js" defer></script>

</head>
<body>
<%@ include file="header.jsp" %>

<main>
    <section>
        <div class="container">
            <div class="account-page">
                <div class="account-container">
                    <div class="left-panel">
                        <h2>Thông tin cá nhân</h2>
                        <form action="personal-info" method="post">
                            <label for="email">Email</label>
                            <input type="email" id="email" value="${sessionScope.user.email}" disabled>
                            <label for="fullname">Họ và tên</label>
                            <input type="text" id="name" name="fullName" value="${sessionScope.user.fullName}" placeholder="Nhập họ và tên">
                            <label for="phone">Số điện thoại</label>
                            <input type="number" id="phone" name="phoneNumber" value="${sessionScope.user.phoneNumber}" placeholder="Nhập số điện thoại">

                            <label for="gender">Giới tính</label>
                            <div class="gender">
                                <label>
                                    <input type="radio" name="gender" value="Nam"
                                           <c:if test="${sessionScope.user.gender == 'Nam'}">checked</c:if>>
                                    Nam
                                </label>

                                <label>
                                    <input type="radio" name="gender" value="Nữ"
                                           <c:if test="${sessionScope.user.gender == 'Nữ'}">checked</c:if>>
                                    Nữ
                                </label>

                                <label>
                                    <input type="radio" name="gender" value="Khác"
                                    <c:if test="${sessionScope.user.gender == 'Khác' || empty sessionScope.user.gender}">
                                           checked
                                    </c:if>>
                                    Không xác định
                                </label>
                            </div>
                            <label for="dob">Ngày sinh</label>
                            <div class="dob">
                                <select id="day">
                                    <option>Ngày</option>
                                </select>
                                <select id="month">
                                    <option>Tháng</option>
                                </select>
                                <select id="year">
                                    <option>Năm</option>
                                </select>
                            </div>

                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" required>
                                    Tôi đồng ý với chính sách xử lý dữ liệu cá nhân
                                </label>
                            </div>
                            <button class="btn-update" type="submit">Cập nhật</button>
                        </form>
                        <c:if test="${not empty message}">
                            <p style="color: green; text-align:center;">
                                    ${message}
                            </p>
                        </c:if>

                        <c:if test="${not empty error}">
                            <p style="color: red; text-align:center;">
                                    ${error}
                            </p>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </section>

</main>

<%@ include file="footer.jsp" %>
</body>
</html>