<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thông tin cá nhân</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/personal-info.css">
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
                        <form>
                            <label for="email">Email</label>
                            <input type="email" id="email" value="Email" disabled>
                            <label for="fullname">Họ và tên</label>
                            <input type="text" id="name" placeholder="Nhập họ và tên">
                            <label for="phone">Số điện thoại</label>
                            <input type="number" id="phone" value="Nhập số điện thoại" placeholder="Nhập số điện thoại">

                            <label for="gender">Giới tính</label>
                            <div class="gender">
                                <label><input type="radio" name="gender" value="Nam"> Nam</label>
                                <label><input type="radio" name="gender" value="Nữ"> Nữ</label>
                                <label><input type="radio" name="gender" value="Khác" checked> Không xác định</label>
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
                                <label><input type="checkbox"> Tôi đồng ý với chính sách xử lý dữ liệu cá nhân</label>
                            </div>
                            <button class="btn-update" type="submit">Cập nhật</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
<%@ include file="footer.jsp" %>
</body>
</html>