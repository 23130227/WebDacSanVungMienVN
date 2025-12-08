<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Tin tức - Admin</title>
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
                <li><a href="admin-orders.jsp"><i class="fas fa-shopping-cart"></i> <span>Đơn hàng</span></a></li>

                <p class="menu-section">Người dùng</p>
                <li><a href="admin-users.jsp"><i class="fas fa-users"></i> <span>Người dùng</span></a></li>
                <li><a href="admin-shipping-info.jsp"><i class="fas fa-map-marker-alt"></i> <span>Địa chỉ giao</span></a></li>
                <li><a href="admin-reviews.jsp"><i class="fas fa-star"></i> <span>Đánh giá</span></a></li>

                <p class="menu-section">Nội dung</p>
                <li><a href="AdminTinTuc.html" class="active"><i class="fas fa-newspaper"></i> <span>Tin tức</span></a></li>

                <p class="menu-section">Hệ thống</p>
                <li><a href="index.jsp"><i class="fas fa-external-link-alt"></i> <span>Xem Website</span></a></li>
                <li><a href="login.jsp"><i class="fas fa-sign-out-alt"></i> <span>Đăng xuất</span></a></li>
            </ul>
        </nav>
    </aside>

    <!-- Main Content -->
    <main class="admin-main">
        <header class="admin-header">
            <h1>Quản lý Tin tức / Blog</h1>
            <div class="user-info">
                <span>Xin chào, Admin</span>
                <img src="images/user.png" alt="Admin">
            </div>
        </header>

        <div class="admin-content">
            <div class="data-table-container">
                <div class="table-header">
                    <h2><i class="fas fa-newspaper"></i> Danh sách bài viết</h2>
                    <div class="table-actions">
                        <input type="text" class="search-box" placeholder="Tìm kiếm bài viết...">
                        <button class="btn btn-primary" onclick="openModal('addModal')">
                            <i class="fas fa-plus"></i> Thêm mới
                        </button>
                    </div>
                </div>
                <table class="data-table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Hình ảnh</th>
                            <th>Tiêu đề</th>
                            <th>Tác giả</th>
                            <th>Ngày đăng</th>
                            <th>Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td><img src="images/blog_1.png" alt="Blog 1"></td>
                            <td>Top 10 đặc sản miền Bắc không thể bỏ qua</td>
                            <td>Admin</td>
                            <td>06/12/2025</td>
                            <td class="actions">
                                <button class="btn btn-info btn-sm" title="Xem" onclick="openModal('viewModal')"><i class="fas fa-eye"></i></button>
                                <button class="btn btn-warning btn-sm" title="Sửa" onclick="openModal('editModal')"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-danger btn-sm" title="Xóa" onclick="confirmDelete()"><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td><img src="images/blog_2.png" alt="Blog 2"></td>
                            <td>Khám phá ẩm thực miền Trung đậm đà</td>
                            <td>Admin</td>
                            <td>05/12/2025</td>
                            <td class="actions">
                                <button class="btn btn-info btn-sm" title="Xem" onclick="openModal('viewModal')"><i class="fas fa-eye"></i></button>
                                <button class="btn btn-warning btn-sm" title="Sửa" onclick="openModal('editModal')"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-danger btn-sm" title="Xóa" onclick="confirmDelete()"><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td><img src="images/blog_3.png" alt="Blog 3"></td>
                            <td>Hương vị đặc sản miền Nam - Ngọt ngào và đậm đà</td>
                            <td>Admin</td>
                            <td>04/12/2025</td>
                            <td class="actions">
                                <button class="btn btn-info btn-sm" title="Xem" onclick="openModal('viewModal')"><i class="fas fa-eye"></i></button>
                                <button class="btn btn-warning btn-sm" title="Sửa" onclick="openModal('editModal')"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-danger btn-sm" title="Xóa" onclick="confirmDelete()"><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td><img src="images/blog_4.png" alt="Blog 4"></td>
                            <td>Bí quyết chọn quà đặc sản cho ngày Tết</td>
                            <td>Admin</td>
                            <td>03/12/2025</td>
                            <td class="actions">
                                <button class="btn btn-info btn-sm" title="Xem" onclick="openModal('viewModal')"><i class="fas fa-eye"></i></button>
                                <button class="btn btn-warning btn-sm" title="Sửa" onclick="openModal('editModal')"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-danger btn-sm" title="Xóa" onclick="confirmDelete()"><i class="fas fa-trash"></i></button>
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

    <!-- View Modal -->
    <div class="modal" id="viewModal">
        <div class="modal-content" style="max-width: 800px;">
            <div class="modal-header">
                <h3><i class="fas fa-eye"></i> Chi tiết bài viết</h3>
                <button class="modal-close" onclick="closeModal('viewModal')">&times;</button>
            </div>
            <div class="modal-body">
                <div style="margin-bottom: 20px;">
                    <img src="images/blog_1.png" alt="Blog" style="width: 100%; max-height: 300px; object-fit: cover; border-radius: 10px;">
                </div>
                <table style="width: 100%; border-collapse: collapse; margin-bottom: 20px;">
                    <tr>
                        <td style="padding: 10px; border-bottom: 1px solid #eee; width: 30%; background: #f8f9fa;"><strong>ID:</strong></td>
                        <td style="padding: 10px; border-bottom: 1px solid #eee;">1</td>
                    </tr>
                    <tr>
                        <td style="padding: 10px; border-bottom: 1px solid #eee; background: #f8f9fa;"><strong>Tiêu đề (title):</strong></td>
                        <td style="padding: 10px; border-bottom: 1px solid #eee;">Top 10 đặc sản miền Bắc không thể bỏ qua</td>
                    </tr>
                    <tr>
                        <td style="padding: 10px; border-bottom: 1px solid #eee; background: #f8f9fa;"><strong>Tác giả (author):</strong></td>
                        <td style="padding: 10px; border-bottom: 1px solid #eee;">Admin</td>
                    </tr>
                    <tr>
                        <td style="padding: 10px; border-bottom: 1px solid #eee; background: #f8f9fa;"><strong>Ngày đăng (published_date):</strong></td>
                        <td style="padding: 10px; border-bottom: 1px solid #eee;">06/12/2025</td>
                    </tr>
                </table>
                <div>
                    <h4 style="color: #2c3e50; margin-bottom: 10px;"><i class="fas fa-file-alt"></i> Nội dung (content)</h4>
                    <div style="background: #f8f9fa; padding: 15px; border-radius: 8px; line-height: 1.8; color: #333;">
                        <p>Miền Bắc Việt Nam nổi tiếng với nhiều món đặc sản truyền thống mang đậm hương vị quê hương. Từ những món ăn đơn giản nhưng tinh tế cho đến những đặc sản nổi tiếng, mỗi vùng miền đều có những nét độc đáo riêng.</p>
                        <p style="margin-top: 10px;"><strong>1. Nem chua Thanh Hóa</strong> - Món ăn đặc trưng với vị chua thanh, thịt lợn tươi ngon được lên men tự nhiên.</p>
                        <p style="margin-top: 10px;"><strong>2. Bánh cốm Hà Nội</strong> - Bánh được làm từ cốm non, có vị ngọt thanh, thơm mùi lá chuối.</p>
                        <p style="margin-top: 10px;"><strong>3. Chả mực Hạ Long</strong> - Đặc sản vùng biển với hương vị đậm đà của mực tươi.</p>
                        <p style="margin-top: 10px;">...</p>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn" onclick="closeModal('viewModal')">Đóng</button>
                <button class="btn btn-warning" onclick="closeModal('viewModal'); openModal('editModal');">
                    <i class="fas fa-edit"></i> Chỉnh sửa
                </button>
            </div>
        </div>
    </div>

    <!-- Add Modal -->
    <div class="modal" id="addModal">
        <div class="modal-content" style="max-width: 800px;">
            <div class="modal-header">
                <h3><i class="fas fa-plus-circle"></i> Thêm bài viết mới</h3>
                <button class="modal-close" onclick="closeModal('addModal')">&times;</button>
            </div>
            <div class="modal-body">
                <form id="addNewsForm">
                    <div class="form-group">
                        <label>Hình ảnh bài viết</label>
                        <div class="file-upload" onclick="document.getElementById('newsImage').click()">
                            <i class="fas fa-cloud-upload-alt"></i>
                            <p>Click để tải ảnh lên</p>
                            <input type="file" id="newsImage" accept="image/*">
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Tiêu đề *</label>
                        <input type="text" name="title" required placeholder="Nhập tiêu đề bài viết">
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label>Tác giả *</label>
                            <input type="text" name="author" required value="Admin">
                        </div>
                        <div class="form-group">
                            <label>Ngày đăng *</label>
                            <input type="date" name="published_date" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Nội dung *</label>
                        <textarea name="content" required style="min-height: 200px;" placeholder="Nhập nội dung bài viết..."></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button class="btn" onclick="closeModal('addModal')">Hủy</button>
                <button class="btn btn-primary" onclick="saveNews()">
                    <i class="fas fa-save"></i> Đăng bài
                </button>
            </div>
        </div>
    </div>

    <!-- Edit Modal -->
    <div class="modal" id="editModal">
        <div class="modal-content" style="max-width: 800px;">
            <div class="modal-header">
                <h3><i class="fas fa-edit"></i> Sửa bài viết</h3>
                <button class="modal-close" onclick="closeModal('editModal')">&times;</button>
            </div>
            <div class="modal-body">
                <form id="editNewsForm">
                    <div class="form-group">
                        <label>Hình ảnh hiện tại</label>
                        <img src="images/blog_1.png" class="image-preview" style="width: 200px; height: auto;" alt="Preview">
                        <div class="file-upload" onclick="document.getElementById('editNewsImage').click()" style="margin-top: 10px;">
                            <i class="fas fa-cloud-upload-alt"></i>
                            <p>Click để thay đổi ảnh</p>
                            <input type="file" id="editNewsImage" accept="image/*">
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Tiêu đề *</label>
                        <input type="text" name="title" required value="Top 10 đặc sản miền Bắc không thể bỏ qua">
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label>Tác giả *</label>
                            <input type="text" name="author" required value="Admin">
                        </div>
                        <div class="form-group">
                            <label>Ngày đăng *</label>
                            <input type="date" name="published_date" required value="2025-12-06">
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Nội dung *</label>
                        <textarea name="content" required style="min-height: 200px;">Miền Bắc Việt Nam nổi tiếng với nhiều món đặc sản truyền thống mang đậm hương vị quê hương. Từ những món ăn đơn giản nhưng tinh tế cho đến những đặc sản nổi tiếng, mỗi vùng miền đều có những nét độc đáo riêng...</textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button class="btn" onclick="closeModal('editModal')">Hủy</button>
                <button class="btn btn-primary" onclick="updateNews()">
                    <i class="fas fa-save"></i> Cập nhật
                </button>
            </div>
        </div>
    </div>

    <script src="js/admin.js"></script>
</body>
</html>

