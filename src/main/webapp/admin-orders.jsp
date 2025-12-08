<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Đơn hàng - Admin</title>
    <link rel="stylesheet" href="css/admin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
    <!-- Sidebar -->
    <aside class="admin-sidebar">
        <div class="logo">
            <h2><i class="fas fa-store"></i> DacSanVungMien</h2>
            <p>Quản trị hệ thống</p>
        </div>
        <nav>
            <ul>
                <li><a href="admin-dashboard.jsp"><i class="fas fa-home"></i> <span>Dashboard</span></a></li>

                <p class="menu-section">Quản lý sản phẩm</p>
                <li><a href="admin-products.jsp"><i class="fas fa-box"></i> <span>Sản phẩm</span></a></li>
                <li><a href="admin-categories.jsp"><i class="fas fa-tags"></i> <span>Danh mục</span></a></li>
                <li><a href="admin-brands.jsp"><i class="fas fa-trademark"></i> <span>Thương hiệu</span></a></li>
                <li><a href="admin-banners.jsp"><i class="fas fa-image"></i> <span>Banner</span></a></li>

                <p class="menu-section">Khuyến mãi</p>
                <li><a href="admin-product-promotions.jsp"><i class="fas fa-percent"></i> <span>KM Sản phẩm</span></a></li>
                <li><a href="admin-category-promotions.jsp"><i class="fas fa-tag"></i> <span>KM Danh mục</span></a></li>
                <li><a href="admin-discount-vouchers.jsp"><i class="fas fa-ticket-alt"></i> <span>Phiếu giảm giá</span></a></li>

                <p class="menu-section">Đơn hàng</p>
                <li><a href="AdminDonHang.html" class="active"><i class="fas fa-shopping-cart"></i> <span>Đơn hàng</span></a></li>

                <p class="menu-section">Người dùng</p>
                <li><a href="admin-users.jsp"><i class="fas fa-users"></i> <span>Người dùng</span></a></li>
                <li><a href="admin-shipping-info.jsp"><i class="fas fa-map-marker-alt"></i> <span>Địa chỉ giao</span></a></li>
                <li><a href="admin-reviews.jsp"><i class="fas fa-star"></i> <span>Đánh giá</span></a></li>

                <p class="menu-section">Nội dung</p>
                <li><a href="admin-news.jsp"><i class="fas fa-newspaper"></i> <span>Tin tức</span></a></li>

                <p class="menu-section">Hệ thống</p>
                <li><a href="index.jsp"><i class="fas fa-external-link-alt"></i> <span>Xem Website</span></a></li>
                <li><a href="login.jsp"><i class="fas fa-sign-out-alt"></i> <span>Đăng xuất</span></a></li>
            </ul>
        </nav>
    </aside>

    <!-- Main Content -->
    <main class="admin-main">
        <header class="admin-header">
            <h1>Quản lý Đơn hàng</h1>
            <div class="user-info">
                <span>Xin chào, Admin</span>
                <img src="images/user.png" alt="Admin">
            </div>
        </header>

        <div class="admin-content">
            <!-- Stats -->
            <div class="stats-grid">
                <div class="stat-card">
                    <div class="icon blue"><i class="fas fa-clock"></i></div>
                    <div class="info">
                        <h3>15</h3>
                        <p>Đang xử lý</p>
                    </div>
                </div>
                <div class="stat-card">
                    <div class="icon orange"><i class="fas fa-truck"></i></div>
                    <div class="info">
                        <h3>28</h3>
                        <p>Đang giao</p>
                    </div>
                </div>
                <div class="stat-card">
                    <div class="icon green"><i class="fas fa-check-circle"></i></div>
                    <div class="info">
                        <h3>156</h3>
                        <p>Đã giao</p>
                    </div>
                </div>
                <div class="stat-card">
                    <div class="icon purple"><i class="fas fa-times-circle"></i></div>
                    <div class="info">
                        <h3>8</h3>
                        <p>Đã hủy</p>
                    </div>
                </div>
            </div>

            <div class="data-table-container">
                <div class="table-header">
                    <h2><i class="fas fa-shopping-cart"></i> Danh sách đơn hàng</h2>
                    <div class="table-actions">
                        <select class="search-box" style="width: 150px;">
                            <option value="">Tất cả</option>
                            <option value="processing">Đang xử lý</option>
                            <option value="shipping">Đang giao</option>
                            <option value="completed">Đã giao</option>
                            <option value="cancelled">Đã hủy</option>
                        </select>
                        <input type="text" class="search-box" placeholder="Tìm kiếm đơn hàng...">
                    </div>
                </div>
                <table class="data-table">
                    <thead>
                        <tr>
                            <th>Mã đơn</th>
                            <th>Khách hàng</th>
                            <th>SĐT</th>
                            <th>Địa chỉ</th>
                            <th>Ngày đặt</th>
                            <th>Thanh toán</th>
                            <th>Giảm giá</th>
                            <th>Trạng thái</th>
                            <th>Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>#DH001</td>
                            <td>Nguyễn Văn A</td>
                            <td>0901234567</td>
                            <td>123 Nguyễn Huệ, Q1, HCM</td>
                            <td>06/12/2025</td>
                            <td><span class="badge badge-info">COD</span></td>
                            <td>10%</td>
                            <td><span class="badge badge-warning">Đang xử lý</span></td>
                            <td class="actions">
                                <button class="btn btn-info btn-sm" title="Xem chi tiết" onclick="openModal('detailModal')"><i class="fas fa-eye"></i></button>
                                <button class="btn btn-warning btn-sm" title="Cập nhật" onclick="openModal('updateModal')"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>#DH002</td>
                            <td>Trần Thị B</td>
                            <td>0912345678</td>
                            <td>456 Lê Lợi, Q3, HCM</td>
                            <td>06/12/2025</td>
                            <td><span class="badge badge-success">Online</span></td>
                            <td>15%</td>
                            <td><span class="badge badge-info">Đang giao</span></td>
                            <td class="actions">
                                <button class="btn btn-info btn-sm" title="Xem chi tiết"><i class="fas fa-eye"></i></button>
                                <button class="btn btn-warning btn-sm" title="Cập nhật"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>#DH003</td>
                            <td>Lê Văn C</td>
                            <td>0923456789</td>
                            <td>789 Trần Hưng Đạo, Q5, HCM</td>
                            <td>05/12/2025</td>
                            <td><span class="badge badge-info">COD</span></td>
                            <td>0%</td>
                            <td><span class="badge badge-success">Đã giao</span></td>
                            <td class="actions">
                                <button class="btn btn-info btn-sm" title="Xem chi tiết"><i class="fas fa-eye"></i></button>
                                <button class="btn btn-warning btn-sm" title="Cập nhật"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>#DH004</td>
                            <td>Phạm Thị D</td>
                            <td>0934567890</td>
                            <td>321 Hai Bà Trưng, Q1, HCM</td>
                            <td>05/12/2025</td>
                            <td><span class="badge badge-success">Online</span></td>
                            <td>20%</td>
                            <td><span class="badge badge-danger">Đã hủy</span></td>
                            <td class="actions">
                                <button class="btn btn-info btn-sm" title="Xem chi tiết"><i class="fas fa-eye"></i></button>
                                <button class="btn btn-warning btn-sm" title="Cập nhật"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>#DH005</td>
                            <td>Hoàng Văn E</td>
                            <td>0945678901</td>
                            <td>654 Nguyễn Trãi, Q5, HCM</td>
                            <td>04/12/2025</td>
                            <td><span class="badge badge-info">COD</span></td>
                            <td>5%</td>
                            <td><span class="badge badge-success">Đã giao</span></td>
                            <td class="actions">
                                <button class="btn btn-info btn-sm" title="Xem chi tiết"><i class="fas fa-eye"></i></button>
                                <button class="btn btn-warning btn-sm" title="Cập nhật"><i class="fas fa-edit"></i></button>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="pagination">
                    <button><i class="fas fa-chevron-left"></i></button>
                    <button class="active">1</button>
                    <button>2</button>
                    <button>3</button>
                    <button><i class="fas fa-chevron-right"></i></button>
                </div>
            </div>
        </div>
    </main>

    <!-- Detail Modal -->
    <div class="modal" id="detailModal">
        <div class="modal-content" style="max-width: 800px;">
            <div class="modal-header">
                <h3><i class="fas fa-eye"></i> Chi tiết đơn hàng #DH001</h3>
                <button class="modal-close" onclick="closeModal('detailModal')">&times;</button>
            </div>
            <div class="modal-body">
                <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 20px; margin-bottom: 20px;">
                    <div>
                        <h4 style="margin-bottom: 10px; color: #2c3e50;">Thông tin khách hàng</h4>
                        <p><strong>Họ tên:</strong> Nguyễn Văn A</p>
                        <p><strong>SĐT:</strong> 0901234567</p>
                        <p><strong>Địa chỉ:</strong> 123 Nguyễn Huệ, Quận 1, TP.HCM</p>
                    </div>
                    <div>
                        <h4 style="margin-bottom: 10px; color: #2c3e50;">Thông tin đơn hàng</h4>
                        <p><strong>Ngày đặt:</strong> 06/12/2025</p>
                        <p><strong>Thanh toán:</strong> COD</p>
                        <p><strong>Trạng thái:</strong> <span class="badge badge-warning">Đang xử lý</span></p>
                    </div>
                </div>
                <div>
                    <p><strong>Ghi chú:</strong> Giao hàng trong giờ hành chính</p>
                </div>
                <h4 style="margin: 20px 0 10px; color: #2c3e50;">Sản phẩm</h4>
                <table class="data-table">
                    <thead>
                        <tr>
                            <th>Sản phẩm</th>
                            <th>Đơn giá</th>
                            <th>Số lượng</th>
                            <th>Thành tiền</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Lạp xưởng Đà Lạt</td>
                            <td>120,000đ</td>
                            <td>2</td>
                            <td>240,000đ</td>
                        </tr>
                        <tr>
                            <td>Bánh pía Sóc Trăng</td>
                            <td>85,000đ</td>
                            <td>3</td>
                            <td>255,000đ</td>
                        </tr>
                    </tbody>
                </table>
                <div style="text-align: right; margin-top: 20px;">
                    <p><strong>Tạm tính:</strong> 495,000đ</p>
                    <p><strong>Giảm giá (10%):</strong> -49,500đ</p>
                    <p style="font-size: 18px; color: #8bc34a;"><strong>Tổng cộng:</strong> 445,500đ</p>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn" onclick="closeModal('detailModal')">Đóng</button>
                <button class="btn btn-primary" onclick="printOrder()">
                    <i class="fas fa-print"></i> In đơn hàng
                </button>
            </div>
        </div>
    </div>

    <!-- Update Status Modal -->
    <div class="modal" id="updateModal">
        <div class="modal-content">
            <div class="modal-header">
                <h3><i class="fas fa-edit"></i> Cập nhật trạng thái đơn hàng</h3>
                <button class="modal-close" onclick="closeModal('updateModal')">&times;</button>
            </div>
            <div class="modal-body">
                <form id="updateOrderForm">
                    <div class="form-group">
                        <label>Mã đơn hàng</label>
                        <input type="text" value="#DH001" readonly>
                    </div>
                    <div class="form-group">
                        <label>Trạng thái hiện tại</label>
                        <input type="text" value="Đang xử lý" readonly>
                    </div>
                    <div class="form-group">
                        <label>Cập nhật trạng thái *</label>
                        <select name="status" required>
                            <option value="processing" selected>Đang xử lý</option>
                            <option value="shipping">Đang giao</option>
                            <option value="completed">Đã giao</option>
                            <option value="cancelled">Đã hủy</option>
                        </select>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button class="btn" onclick="closeModal('updateModal')">Hủy</button>
                <button class="btn btn-primary" onclick="updateOrderStatus()">
                    <i class="fas fa-save"></i> Cập nhật
                </button>
            </div>
        </div>
    </div>

    <script src="js/admin.js"></script>
</body>
</html>

