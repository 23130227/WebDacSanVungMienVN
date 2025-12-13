<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thông tin giao hàng</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/shipping-info.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
<%@ include file="header.jsp" %>

<main>

    <div class="page-header">
        <h1>📦 Thông tin giao hàng</h1>
        <p>Quản lý thông tin giao hàng của bạn tại đây — chỉnh sửa hoặc cập nhật địa chỉ nhanh chóng và tiện lợi.</p>
    </div>

    <div class="address-layout">
        <section class="address-header">
            <form id="address-form" class="address-form">
                <h2 class="form-title">Thêm thông tin giao hàng</h2>
                <div class="row">
                    <div class="form-group">
                        <label><i class="fa fa-user"></i></label>
                        <input type="text" id="name" placeholder="Tên người nhận">
                    </div>
                    <div class="form-group">
                        <label><i class="fa fa-phone"></i></label>
                        <input type="text" id="phone" placeholder="Số điện thoại người nhận">
                    </div>
                </div>

                <div class="row-selects">
                    <select id="province">
                        <option>Tỉnh/Thành *</option>
                    </select>
                    <select id="district">
                        <option>Quận/Huyện *</option>
                    </select>
                    <select id="ward">
                        <option>Phường/Xã *</option>
                    </select>
                </div>

                <div class="form-group">
                    <label><i class="fa fa-map-marker"></i></label>
                    <input type="text" id="address" placeholder="Địa chỉ cụ thể">
                </div>

                <div class="actions">
                    <button type="button">Thêm</button>
                </div>
            </form>
        </section>
        <section class="address-list">
            <p>Danh sách địa chỉ giao hàng</p>
            <div class = "address-list-container">
                <a href="payment-info.jsp" class="address-item">
                    <div class="address-info">
                        <strong>Nguyễn Văn A</strong>
                        <br>0123456789<br>
                        Linh Trung, Thủ Đức, TP.HCM<br>
                        Cư xá A, Đại học Nông Lâm
                    </div>
                </a>
                <i class="fa-solid fa-pencil"></i>
                <button type="button" class ="delete-address">Xóa</button>
            </div>
        </section>
    </div>

</main>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<%@ include file="footer.jsp" %>
</body>
</html>