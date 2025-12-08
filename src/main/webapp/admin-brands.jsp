<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Thương hiệu - Admin</title>
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
                <li><a href="AdminThuongHieu.html" class="active"><i class="fas fa-trademark"></i> <span>Thương hiệu</span></a></li>
                <li><a href="admin-banners.jsp"><i class="fas fa-image"></i> <span>Banner</span></a></li>

                <p class="menu-section">Khuyến mãi</p>
                <li><a href="admin-product-promotions.jsp"><i class="fas fa-percent"></i> <span>KM Sản phẩm</span></a></li>
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
            <h1>Quản lý Thương hiệu</h1>
            <div class="user-info">
                <span>Xin chào, Admin</span>
                <img src="images/user.png" alt="Admin">
            </div>
        </header>

        <div class="admin-content">
            <div class="data-table-container">
                <div class="table-header">
                    <h2><i class="fas fa-trademark"></i> Danh sách thương hiệu</h2>
                    <div class="table-actions">
                        <input type="text" class="search-box" placeholder="Tìm kiếm thương hiệu...">
                        <button class="btn btn-primary" onclick="openModal('addModal')">
                            <i class="fas fa-plus"></i> Thêm mới
                        </button>
                    </div>
                </div>
                <table class="data-table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Tên thương hiệu</th>
                            <th>Thông tin</th>
                            <th>Số sản phẩm</th>
                            <th>Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Đặc sản Đà Lạt</td>
                            <td>Thương hiệu đặc sản nổi tiếng từ Đà Lạt, Lâm Đồng</td>
                            <td>15</td>
                            <td class="actions">
                                <button class="btn btn-warning btn-sm" title="Sửa" onclick="openModal('editModal')"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-danger btn-sm" title="Xóa" onclick="confirmDelete()"><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Tân Huê Viên</td>
                            <td>Thương hiệu bánh pía truyền thống Sóc Trăng</td>
                            <td>8</td>
                            <td class="actions">
                                <button class="btn btn-warning btn-sm" title="Sửa"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-danger btn-sm" title="Xóa"><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Nước mắm Phú Quốc</td>
                            <td>Nước mắm truyền thống đảo Phú Quốc, Kiên Giang</td>
                            <td>5</td>
                            <td class="actions">
                                <button class="btn btn-warning btn-sm" title="Sửa"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-danger btn-sm" title="Xóa"><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Thanh Hóa</td>
                            <td>Thương hiệu nem chua nổi tiếng Thanh Hóa</td>
                            <td>6</td>
                            <td class="actions">
                                <button class="btn btn-warning btn-sm" title="Sửa"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-danger btn-sm" title="Xóa"><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>Sơn La</td>
                            <td>Trà và đặc sản vùng cao Tây Bắc</td>
                            <td>10</td>
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
                    <button><i class="fas fa-chevron-right"></i></button>
                </div>
            </div>
        </div>
    </main>

    <!-- Add Modal -->
    <div class="modal" id="addModal">
        <div class="modal-content">
            <div class="modal-header">
                <h3><i class="fas fa-plus-circle"></i> Thêm thương hiệu mới</h3>
                <button class="modal-close" onclick="closeModal('addModal')">&times;</button>
            </div>
            <div class="modal-body">
                <form id="addBrandForm">
                    <div class="form-group">
                        <label>Tên thương hiệu *</label>
                        <input type="text" name="name" required placeholder="Nhập tên thương hiệu">
                    </div>
                    <div class="form-group">
                        <label>Thông tin</label>
                        <textarea name="info" placeholder="Nhập thông tin về thương hiệu..."></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button class="btn" onclick="closeModal('addModal')">Hủy</button>
                <button class="btn btn-primary" onclick="saveBrand()">
                    <i class="fas fa-save"></i> Lưu
                </button>
            </div>
        </div>
    </div>

    <!-- Edit Modal -->
    <div class="modal" id="editModal">
        <div class="modal-content">
            <div class="modal-header">
                <h3><i class="fas fa-edit"></i> Sửa thương hiệu</h3>
                <button class="modal-close" onclick="closeModal('editModal')">&times;</button>
            </div>
            <div class="modal-body">
                <form id="editBrandForm">
                    <div class="form-group">
                        <label>Tên thương hiệu *</label>
                        <input type="text" name="name" required value="Đặc sản Đà Lạt">
                    </div>
                    <div class="form-group">
                        <label>Thông tin</label>
                        <textarea name="info">Thương hiệu đặc sản nổi tiếng từ Đà Lạt, Lâm Đồng</textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button class="btn" onclick="closeModal('editModal')">Hủy</button>
                <button class="btn btn-primary" onclick="updateBrand()">
                    <i class="fas fa-save"></i> Cập nhật
                </button>
            </div>
        </div>
    </div>

    <script src="js/admin.js"></script>
</body>
</html>

