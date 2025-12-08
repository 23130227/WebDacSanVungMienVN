<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Khuyến mãi Sản phẩm - Admin</title>
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
                <li><a href="AdminKhuyenMaiSanPham.html" class="active"><i class="fas fa-percent"></i> <span>KM Sản phẩm</span></a></li>
                <li><a href="admin-category-promotions.jsp"><i class="fas fa-tag"></i> <span>KM Danh mục</span></a></li>
                <li><a href="admin-discount-vouchers.jsp"><i class="fas fa-ticket-alt"></i> <span>Phiếu giảm giá</span></a></li>

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
            <h1>Quản lý Khuyến mãi Sản phẩm</h1>
            <div class="user-info">
                <span>Xin chào, Admin</span>
                <img src="images/user.png" alt="Admin">
            </div>
        </header>

        <div class="admin-content">
            <div class="data-table-container">
                <div class="table-header">
                    <h2><i class="fas fa-percent"></i> Danh sách khuyến mãi sản phẩm</h2>
                    <div class="table-actions">
                        <input type="text" class="search-box" placeholder="Tìm kiếm...">
                        <button class="btn btn-primary" onclick="openModal('addModal')">
                            <i class="fas fa-plus"></i> Thêm mới
                        </button>
                    </div>
                </div>
                <table class="data-table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Sản phẩm</th>
                            <th>Giảm giá</th>
                            <th>Ngày bắt đầu</th>
                            <th>Ngày kết thúc</th>
                            <th>Trạng thái</th>
                            <th>Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Lạp xưởng Đà Lạt</td>
                            <td><span class="badge badge-success">30%</span></td>
                            <td>01/12/2025</td>
                            <td>31/12/2025</td>
                            <td><span class="badge badge-success">Đang áp dụng</span></td>
                            <td class="actions">
                                <button class="btn btn-warning btn-sm" title="Sửa" onclick="openModal('editModal')"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-danger btn-sm" title="Xóa" onclick="confirmDelete()"><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Bánh pía Sóc Trăng</td>
                            <td><span class="badge badge-success">20%</span></td>
                            <td>05/12/2025</td>
                            <td>25/12/2025</td>
                            <td><span class="badge badge-success">Đang áp dụng</span></td>
                            <td class="actions">
                                <button class="btn btn-warning btn-sm" title="Sửa"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-danger btn-sm" title="Xóa"><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Nước mắm Phú Quốc</td>
                            <td><span class="badge badge-success">15%</span></td>
                            <td>10/12/2025</td>
                            <td>20/12/2025</td>
                            <td><span class="badge badge-warning">Sắp áp dụng</span></td>
                            <td class="actions">
                                <button class="btn btn-warning btn-sm" title="Sửa"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-danger btn-sm" title="Xóa"><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Nem chua Thanh Hóa</td>
                            <td><span class="badge badge-success">25%</span></td>
                            <td>01/11/2025</td>
                            <td>30/11/2025</td>
                            <td><span class="badge badge-danger">Đã kết thúc</span></td>
                            <td class="actions">
                                <button class="btn btn-warning btn-sm" title="Sửa"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-danger btn-sm" title="Xóa"><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="pagination">
                    <button><i class="fas fa-chevron-left"></i></button>
                    <button class="active">1</button>
                    <button>2</button>
                    <button><i class="fas fa-chevron-right"></i></button>
                </div>
            </div>
        </div>
    </main>

    <!-- Add Modal -->
    <div class="modal" id="addModal">
        <div class="modal-content">
            <div class="modal-header">
                <h3><i class="fas fa-plus-circle"></i> Thêm khuyến mãi sản phẩm</h3>
                <button class="modal-close" onclick="closeModal('addModal')">&times;</button>
            </div>
            <div class="modal-body">
                <form id="addDiscountForm">
                    <div class="form-group">
                        <label>Sản phẩm *</label>
                        <select name="product" required>
                            <option value="">-- Chọn sản phẩm --</option>
                            <option value="1">Lạp xưởng Đà Lạt</option>
                            <option value="2">Bánh pía Sóc Trăng</option>
                            <option value="3">Nước mắm Phú Quốc</option>
                            <option value="4">Nem chua Thanh Hóa</option>
                            <option value="5">Trà Tà Xùa</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Phần trăm giảm giá (%) *</label>
                        <input type="number" name="discount_percentage" required min="1" max="100" placeholder="Nhập phần trăm giảm giá">
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
                <button class="btn btn-primary" onclick="saveProductDiscount()">
                    <i class="fas fa-save"></i> Lưu
                </button>
            </div>
        </div>
    </div>

    <!-- Edit Modal -->
    <div class="modal" id="editModal">
        <div class="modal-content">
            <div class="modal-header">
                <h3><i class="fas fa-edit"></i> Sửa khuyến mãi sản phẩm</h3>
                <button class="modal-close" onclick="closeModal('editModal')">&times;</button>
            </div>
            <div class="modal-body">
                <form id="editDiscountForm">
                    <div class="form-group">
                        <label>Sản phẩm *</label>
                        <select name="product" required>
                            <option value="">-- Chọn sản phẩm --</option>
                            <option value="1" selected>Lạp xưởng Đà Lạt</option>
                            <option value="2">Bánh pía Sóc Trăng</option>
                            <option value="3">Nước mắm Phú Quốc</option>
                            <option value="4">Nem chua Thanh Hóa</option>
                            <option value="5">Trà Tà Xùa</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Phần trăm giảm giá (%) *</label>
                        <input type="number" name="discount_percentage" required min="1" max="100" value="30">
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label>Ngày bắt đầu *</label>
                            <input type="date" name="start_date" required value="2025-12-01">
                        </div>
                        <div class="form-group">
                            <label>Ngày kết thúc *</label>
                            <input type="date" name="end_date" required value="2025-12-31">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button class="btn" onclick="closeModal('editModal')">Hủy</button>
                <button class="btn btn-primary" onclick="updateProductDiscount()">
                    <i class="fas fa-save"></i> Cập nhật
                </button>
            </div>
        </div>
    </div>

    <script src="js/admin.js"></script>
</body>
</html>

