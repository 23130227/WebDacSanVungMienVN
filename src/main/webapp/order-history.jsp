<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Lịch sử mua hàng</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/order-history.css">
</head>
<body>
<%@ include file="header.jsp" %>

<main>
    <section class="section-lich-su-mua-hang">
        <div class="container">
            <div class="title-panel">
                <h2>Lịch sử mua hàng</h2>
            </div>
            <div class="order-list">
                <div class="order">
                    <a href="order-detail.jsp">
                        <div class="order-info">
                            <div class="order-header">
                                <h3>Đơn hàng #103327357747</h3>
                                <p>Xem chi tiết ></p>
                            </div>
                            <div class="order-meta">
                                <p>Ngày đặt: 03/11/2025</p>
                                <p class="trang-thai">Giao thành công</p>
                            </div>
                            <div class="order-images">
                                <img src="images/lacxuong.png">
                                <img src="images/banhdake.png">
                                <img src="images/banhmexat.png">
                            </div>
                        </div>
                    </a>
                    <div class="order-total">
                        <p>Tổng tiền: 145.100đ</p>
                    </div>
                    <div class="button-panel">
                        <button class="reorder-button" onclick="location.href='GioHang.html';">
                            Mua lại
                        </button>
                    </div>
                </div>
                <div class="order">
                    <a href="order-detail.jsp">
                        <div class="order-info">
                            <div class="order-header">
                                <h3>Đơn hàng #100627512400</h3>
                                <p>Xem chi tiết ></p>
                            </div>
                            <div class="order-meta">
                                <p>Ngày đặt: 02/11/2025</p>
                                <p class="trang-thai">Giao thành công</p>
                            </div>
                            <div class="order-images">
                                <img src="images/bakhiatron.png">
                                <img src="images/banhpia.png">
                                <img src="images/duasap.png">
                                <img src="images/comdep.png">
                            </div>
                        </div>
                    </a>
                    <div class="order-total">
                        <p>Tổng tiền: 200.900đ</p>
                    </div>
                    <div class="button-panel">
                        <button class="reorder-button" onclick="location.href='GioHang.html';">
                            Mua lại
                        </button>
                    </div>
                </div>
                <div class="order">
                    <a href="order-detail.jsp">
                        <div class="order-info">
                            <div class="order-header">
                                <h3>Đơn hàng #100627512395</h3>
                                <p>Xem chi tiết ></p>
                            </div>
                            <div class="order-meta">
                                <p>Ngày đặt: 01/11/2025</p>
                                <p class="trang-thai">Giao thành công</p>
                            </div>
                            <div class="order-images">
                                <img src="images/keodua.png">
                                <img src="images/mamChauDoc.png">
                            </div>
                        </div>
                    </a>
                    <div class="order-total">
                        <p>Tổng tiền: 112.600đ</p>
                    </div>
                    <div class="button-panel">
                        <button class="reorder-button" onclick="location.href='GioHang.html';">
                            Mua lại
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>

<%@ include file="footer.jsp" %>
</body>
</html>