<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Phiếu giảm giá - Admin</title>
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
                <li><a href="AdminPhieuGiamGia.html" class="active"><i class="fas fa-ticket-alt"></i> <span>Phiếu giảm giá</span></a></li>

                <p class="menu-section">Đơn hàng</p>
                <li><a href="admin-orders.jsp"><i class="fas fa-shopping-cart"></i> <span>Đơn hàng</span></a></li>

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
            <h1>Quản lý Phiếu giảm giá (Voucher)</h1>
            <div class="user-info">
                <span>Xin chào, Admin</span>
                <img src="images/user.png" alt="Admin">
            </div>
        </header>

        <div class="admin-content">
            <div class="data-table-container">
                <div class="table-header">
                    <h2><i class="fas fa-ticket-alt"></i> Danh sách phiếu giảm giá</h2>
                    <div class="table-actions">
                        <input type="text" class="search-box" placeholder="Tìm kiếm voucher...">
                        <button class="btn btn-primary" onclick="openModal('addModal')">
                            <i class="fas fa-plus"></i> Thêm mới
                        </button>
                    </div>
                </div>
                <table class="data-table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Tên voucher</th>
                            <th>Giảm giá</th>
                            <th>Đơn tối thiểu</th>
                            <th>Số lượng</th>
                            <th>Thời gian</th>
                            <th>Trạng thái</th>
                            <th>Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>GIANG SINH 2025</td>
                            <td><span class="badge badge-success">20%</span></td>
                            <td>200,000đ</td>
                            <td>100</td>
                            <td>01/12 - 25/12/2025</td>
                            <td><span class="badge badge-success">Đang áp dụng</span></td>
                            <td class="actions">
                                <button class="btn btn-info btn-sm" title="Xem người dùng" onclick="openModal('usersModal')"><i class="fas fa-users"></i></button>
                                <button class="btn btn-warning btn-sm" title="Sửa" onclick="openModal('editModal')"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-danger btn-sm" title="Xóa" onclick="confirmDelete()"><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>FREESHIP50</td>
                            <td><span class="badge badge-success">50,000đ</span></td>
                            <td>150,000đ</td>
                            <td>200</td>
                            <td>01/12 - 31/12/2025</td>
                            <td><span class="badge badge-success">Đang áp dụng</span></td>
                            <td class="actions">
                                <button class="btn btn-info btn-sm" title="Xem người dùng" onclick="openModal('usersModal')"><i class="fas fa-users"></i></button>
                                <button class="btn btn-warning btn-sm" title="Sửa" onclick="openModal('editModal')"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-danger btn-sm" title="Xóa" onclick="confirmDelete()"><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>NEWUSER</td>
                            <td><span class="badge badge-success">15%</span></td>
                            <td>100,000đ</td>
                            <td>500</td>
                            <td>01/01 - 31/12/2025</td>
                            <td><span class="badge badge-success">Đang áp dụng</span></td>
                            <td class="actions">
                                <button class="btn btn-info btn-sm" title="Xem người dùng" onclick="openModal('usersModal')"><i class="fas fa-users"></i></button>
                                <button class="btn btn-warning btn-sm" title="Sửa" onclick="openModal('editModal')"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-danger btn-sm" title="Xóa" onclick="confirmDelete()"><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>BLACK FRIDAY</td>
                            <td><span class="badge badge-success">30%</span></td>
                            <td>300,000đ</td>
                            <td>0</td>
                            <td>25/11 - 30/11/2025</td>
                            <td><span class="badge badge-danger">Hết hạn</span></td>
                            <td class="actions">
                                <button class="btn btn-info btn-sm" title="Xem người dùng" onclick="openModal('usersModal')"><i class="fas fa-users"></i></button>
                                <button class="btn btn-warning btn-sm" title="Sửa" onclick="openModal('editModal')"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-danger btn-sm" title="Xóa" onclick="confirmDelete()"><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="pagination">
                    <button><i class="fas fa-chevron-left"></i></button>
                    <button class="active">1</button>
                    <button><i class="fas fa-chevron-right"></i></button>
                </div>
            </div>
        </div>
    </main>

    <!-- Users Modal - Danh sách người dùng đã nhận voucher -->
    <div class="modal" id="usersModal">
        <div class="modal-content" style="max-width: 700px;">
            <div class="modal-header">
                <h3><i class="fas fa-users"></i> Người dùng đã nhận voucher: GIANG SINH 2025</h3>
                <button class="modal-close" onclick="closeModal('usersModal')">&times;</button>
            </div>
            <div class="modal-body">
                <div style="margin-bottom: 15px;">
                    <p><strong>Tổng số người dùng:</strong> 25</p>
                    <p><strong>Đã sử dụng:</strong> 18 / 25</p>
                </div>
                <table class="data-table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Họ tên</th>
                            <th>Email</th>
                            <th>SĐT</th>
                            <th>Trạng thái</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Nguyễn Văn A</td>
                            <td>nguyenvana@gmail.com</td>
                            <td>0901234567</td>
                            <td><span class="badge badge-success">Đã sử dụng</span></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Trần Thị B</td>
                            <td>tranthib@gmail.com</td>
                            <td>0912345678</td>
                            <td><span class="badge badge-success">Đã sử dụng</span></td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Lê Văn C</td>
                            <td>levanc@gmail.com</td>
                            <td>0923456789</td>
                            <td><span class="badge badge-warning">Chưa sử dụng</span></td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Phạm Thị D</td>
                            <td>phamthid@gmail.com</td>
                            <td>0934567890</td>
                            <td><span class="badge badge-success">Đã sử dụng</span></td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>Hoàng Văn E</td>
                            <td>hoangvane@gmail.com</td>
                            <td>0945678901</td>
                            <td><span class="badge badge-warning">Chưa sử dụng</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button class="btn" onclick="closeModal('usersModal')">Đóng</button>
            </div>
        </div>
    </div>

    <!-- Add Modal -->
    <div class="modal" id="addModal">
        <div class="modal-content">
            <div class="modal-header">
                <h3><i class="fas fa-plus-circle"></i> Thêm phiếu giảm giá mới</h3>
                <button class="modal-close" onclick="closeModal('addModal')">&times;</button>
            </div>
            <div class="modal-body">
                <form id="addVoucherForm">
                    <div class="form-group">
                        <label>Tên voucher *</label>
                        <input type="text" name="name" required placeholder="VD: GIANG SINH 2025">
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label>Phần trăm giảm giá (%) *</label>
                            <input type="number" name="discount_percentage" required min="1" max="100" placeholder="Nhập %">
                        </div>
                        <div class="form-group">
                            <label>Số lượng *</label>
                            <input type="number" name="quantity" required min="1" placeholder="Số lượng voucher">
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Đơn tối thiểu (VNĐ) *</label>
                        <input type="number" name="applied_price" required placeholder="Giá trị đơn tối thiểu để áp dụng">
                    </div>
                    <div class="form-group">
                        <label>Mô tả</label>
                        <textarea name="description" placeholder="Mô tả chi tiết voucher..."></textarea>
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label>Ngày bắt đầu *</label>
                            <input type="date" name="start_date" required>
                        </div>
                        <div class="form-group">
                            <label>Ngày kết thúc *</label>
                            <input type="date" name="end_date" required>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button class="btn" onclick="closeModal('addModal')">Hủy</button>
                <button class="btn btn-primary" onclick="saveVoucher()">
                    <i class="fas fa-save"></i> Lưu
                </button>
            </div>
        </div>
    </div>

    <!-- Edit Modal -->
    <div class="modal" id="editModal">
        <div class="modal-content">
            <div class="modal-header">
                <h3><i class="fas fa-edit"></i> Sửa phiếu giảm giá</h3>
                <button class="modal-close" onclick="closeModal('editModal')">&times;</button>
            </div>
            <div class="modal-body">
                <form id="editVoucherForm">
                    <div class="form-group">
                        <label>Tên voucher *</label>
                        <input type="text" name="name" required value="GIANG SINH 2025">
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label>Phần trăm giảm giá (%) *</label>
                            <input type="number" name="discount_percentage" required min="1" max="100" value="20">
                        </div>
                        <div class="form-group">
                            <label>Số lượng *</label>
                            <input type="number" name="quantity" required min="1" value="100">
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Đơn tối thiểu (VNĐ) *</label>
                        <input type="number" name="applied_price" required value="200000">
                    </div>
                    <div class="form-group">
                        <label>Mô tả</label>
                        <textarea name="description">Voucher giảm giá nhân dịp Giáng Sinh 2025</textarea>
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label>Ngày bắt đầu *</label>
                            <input type="date" name="start_date" required value="2025-12-01">
                        </div>
                        <div class="form-group">
                            <label>Ngày kết thúc *</label>
                            <input type="date" name="end_date" required value="2025-12-25">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button class="btn" onclick="closeModal('editModal')">Hủy</button>
                <button class="btn btn-primary" onclick="updateVoucher()">
                    <i class="fas fa-save"></i> Cập nhật
                </button>
            </div>
        </div>
    </div>

    <script src="js/admin.js"></script>
</body>
</html>

