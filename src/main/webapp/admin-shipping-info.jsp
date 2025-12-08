<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Địa chỉ giao hàng - Admin</title>
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
                <li><a href="AdminDiaChiGiao.html" class="active"><i class="fas fa-map-marker-alt"></i> <span>Địa chỉ giao</span></a></li>
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
            <h1>Quản lý Địa chỉ giao hàng</h1>
            <div class="user-info">
                <span>Xin chào, Admin</span>
                <img src="images/user.png" alt="Admin">
            </div>
        </header>

        <div class="admin-content">
            <div class="data-table-container">
                <div class="table-header">
                    <h2><i class="fas fa-map-marker-alt"></i> Danh sách địa chỉ giao hàng (SHIPPING_INFO)</h2>
                    <div class="table-actions">
                        <input type="text" class="search-box" placeholder="Tìm kiếm...">
                    </div>
                </div>
                <table class="data-table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Người dùng</th>
                            <th>Người nhận</th>
                            <th>SĐT</th>
                            <th>Tỉnh/TP</th>
                            <th>Quận/Huyện</th>
                            <th>Phường/Xã</th>
                            <th>Địa chỉ chi tiết</th>
                            <th>Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Nguyễn Văn A</td>
                            <td>Nguyễn Văn A</td>
                            <td>0901234567</td>
                            <td>TP. Hồ Chí Minh</td>
                            <td>Quận 1</td>
                            <td>Phường Bến Nghé</td>
                            <td>123 Nguyễn Huệ</td>
                            <td class="actions">
                                <button class="btn btn-info btn-sm" title="Xem" onclick="openModal('viewModal')"><i class="fas fa-eye"></i></button>
                                <button class="btn btn-warning btn-sm" title="Sửa" onclick="openModal('editModal')"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-danger btn-sm" title="Xóa" onclick="confirmDelete()"><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Nguyễn Văn A</td>
                            <td>Nguyễn Thị X</td>
                            <td>0987654321</td>
                            <td>Hà Nội</td>
                            <td>Quận Hoàn Kiếm</td>
                            <td>Phường Hàng Bông</td>
                            <td>45 Hàng Bông</td>
                            <td class="actions">
                                <button class="btn btn-info btn-sm" title="Xem" onclick="openModal('viewModal')"><i class="fas fa-eye"></i></button>
                                <button class="btn btn-warning btn-sm" title="Sửa" onclick="openModal('editModal')"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-danger btn-sm" title="Xóa" onclick="confirmDelete()"><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Trần Thị B</td>
                            <td>Trần Thị B</td>
                            <td>0912345678</td>
                            <td>TP. Hồ Chí Minh</td>
                            <td>Quận 3</td>
                            <td>Phường 1</td>
                            <td>456 Lê Lợi</td>
                            <td class="actions">
                                <button class="btn btn-info btn-sm" title="Xem" onclick="openModal('viewModal')"><i class="fas fa-eye"></i></button>
                                <button class="btn btn-warning btn-sm" title="Sửa" onclick="openModal('editModal')"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-danger btn-sm" title="Xóa" onclick="confirmDelete()"><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Lê Văn C</td>
                            <td>Lê Văn C</td>
                            <td>0923456789</td>
                            <td>Đà Nẵng</td>
                            <td>Quận Hải Châu</td>
                            <td>Phường Hải Châu 1</td>
                            <td>78 Bạch Đằng</td>
                            <td class="actions">
                                <button class="btn btn-info btn-sm" title="Xem" onclick="openModal('viewModal')"><i class="fas fa-eye"></i></button>
                                <button class="btn btn-warning btn-sm" title="Sửa" onclick="openModal('editModal')"><i class="fas fa-edit"></i></button>
                                <button class="btn btn-danger btn-sm" title="Xóa" onclick="confirmDelete()"><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>Phạm Thị D</td>
                            <td>Phạm Văn Y</td>
                            <td>0934567890</td>
                            <td>Cần Thơ</td>
                            <td>Quận Ninh Kiều</td>
                            <td>Phường An Cư</td>
                            <td>321 Hai Bà Trưng</td>
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
        <div class="modal-content" style="max-width: 600px;">
            <div class="modal-header">
                <h3><i class="fas fa-eye"></i> Chi tiết địa chỉ giao hàng</h3>
                <button class="modal-close" onclick="closeModal('viewModal')">&times;</button>
            </div>
            <div class="modal-body">
                <table style="width: 100%; border-collapse: collapse;">
                    <tr>
                        <td style="padding: 12px; border-bottom: 1px solid #eee; width: 40%; background: #f8f9fa;"><strong>ID:</strong></td>
                        <td style="padding: 12px; border-bottom: 1px solid #eee;">1</td>
                    </tr>
                    <tr>
                        <td style="padding: 12px; border-bottom: 1px solid #eee; background: #f8f9fa;"><strong>Người dùng (id_user):</strong></td>
                        <td style="padding: 12px; border-bottom: 1px solid #eee;">Nguyễn Văn A (ID: 2)</td>
                    </tr>
                    <tr>
                        <td style="padding: 12px; border-bottom: 1px solid #eee; background: #f8f9fa;"><strong>Người nhận (receiver_name):</strong></td>
                        <td style="padding: 12px; border-bottom: 1px solid #eee;">Nguyễn Văn A</td>
                    </tr>
                    <tr>
                        <td style="padding: 12px; border-bottom: 1px solid #eee; background: #f8f9fa;"><strong>SĐT (receiver_phone_number):</strong></td>
                        <td style="padding: 12px; border-bottom: 1px solid #eee;">0901234567</td>
                    </tr>
                    <tr>
                        <td style="padding: 12px; border-bottom: 1px solid #eee; background: #f8f9fa;"><strong>Tỉnh/TP (province):</strong></td>
                        <td style="padding: 12px; border-bottom: 1px solid #eee;">TP. Hồ Chí Minh</td>
                    </tr>
                    <tr>
                        <td style="padding: 12px; border-bottom: 1px solid #eee; background: #f8f9fa;"><strong>Quận/Huyện (district):</strong></td>
                        <td style="padding: 12px; border-bottom: 1px solid #eee;">Quận 1</td>
                    </tr>
                    <tr>
                        <td style="padding: 12px; border-bottom: 1px solid #eee; background: #f8f9fa;"><strong>Phường/Xã (ward):</strong></td>
                        <td style="padding: 12px; border-bottom: 1px solid #eee;">Phường Bến Nghé</td>
                    </tr>
                    <tr>
                        <td style="padding: 12px; border-bottom: 1px solid #eee; background: #f8f9fa;"><strong>Địa chỉ chi tiết (detailed_address):</strong></td>
                        <td style="padding: 12px; border-bottom: 1px solid #eee;">123 Nguyễn Huệ</td>
                    </tr>
                </table>
                <div style="margin-top: 20px; padding: 15px; background: #e8f5e9; border-radius: 8px;">
                    <h4 style="color: #2e7d32; margin-bottom: 10px;"><i class="fas fa-map-marked-alt"></i> Địa chỉ đầy đủ</h4>
                    <p style="color: #333;">123 Nguyễn Huệ, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh</p>
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

    <!-- Edit Modal -->
    <div class="modal" id="editModal">
        <div class="modal-content" style="max-width: 650px;">
            <div class="modal-header">
                <h3><i class="fas fa-edit"></i> Chỉnh sửa địa chỉ giao hàng</h3>
                <button class="modal-close" onclick="closeModal('editModal')">&times;</button>
            </div>
            <div class="modal-body">
                <form id="editShippingForm">
                    <div class="form-group">
                        <label>Người dùng (id_user)</label>
                        <input type="text" value="Nguyễn Văn A (ID: 2)" readonly style="background: #f5f5f5;">
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label>Tên người nhận (receiver_name) *</label>
                            <input type="text" name="receiver_name" required value="Nguyễn Văn A">
                        </div>
                        <div class="form-group">
                            <label>SĐT người nhận (receiver_phone_number) *</label>
                            <input type="tel" name="receiver_phone_number" required value="0901234567">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label>Tỉnh/Thành phố (province) *</label>
                            <select name="province" required>
                                <option value="">-- Chọn Tỉnh/TP --</option>
                                <option value="TP. Hồ Chí Minh" selected>TP. Hồ Chí Minh</option>
                                <option value="Hà Nội">Hà Nội</option>
                                <option value="Đà Nẵng">Đà Nẵng</option>
                                <option value="Cần Thơ">Cần Thơ</option>
                                <option value="Hải Phòng">Hải Phòng</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Quận/Huyện (district) *</label>
                            <select name="district" required>
                                <option value="">-- Chọn Quận/Huyện --</option>
                                <option value="Quận 1" selected>Quận 1</option>
                                <option value="Quận 3">Quận 3</option>
                                <option value="Quận 5">Quận 5</option>
                                <option value="Quận 7">Quận 7</option>
                                <option value="Quận 10">Quận 10</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Phường/Xã (ward) *</label>
                        <select name="ward" required>
                            <option value="">-- Chọn Phường/Xã --</option>
                            <option value="Phường Bến Nghé" selected>Phường Bến Nghé</option>
                            <option value="Phường Bến Thành">Phường Bến Thành</option>
                            <option value="Phường Cầu Kho">Phường Cầu Kho</option>
                            <option value="Phường Cầu Ông Lãnh">Phường Cầu Ông Lãnh</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Địa chỉ chi tiết (detailed_address) *</label>
                        <textarea name="detailed_address" required placeholder="Số nhà, tên đường...">123 Nguyễn Huệ</textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button class="btn" onclick="closeModal('editModal')">Hủy</button>
                <button class="btn btn-primary" onclick="updateShippingInfo()">
                    <i class="fas fa-save"></i> Cập nhật
                </button>
            </div>
        </div>
    </div>

    <script src="js/admin.js"></script>
    <script>
        function updateShippingInfo() {
            const form = document.getElementById('editShippingForm');
            if (form && form.checkValidity()) {
                showAlert('Đã cập nhật địa chỉ giao hàng thành công!', 'success');
                closeModal('editModal');
            } else if (form) {
                form.reportValidity();
            }
        }
    </script>
</body>
</html>

