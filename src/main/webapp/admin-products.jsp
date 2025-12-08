<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Sản phẩm - Admin</title>
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
            <li><a href="AdminSanPham.html" class="active"><i class="fas fa-box"></i> <span>Sản phẩm</span></a></li>
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
        <h1>Quản lý Sản phẩm</h1>
        <div class="user-info">
            <span>Xin chào, Admin</span>
            <img src="images/user.png" alt="Admin">
        </div>
    </header>

    <div class="admin-content">
        <div class="data-table-container">
            <div class="table-header">
                <h2><i class="fas fa-box"></i> Danh sách sản phẩm</h2>
                <div class="table-actions">
                    <input type="text" class="search-box" placeholder="Tìm kiếm sản phẩm...">
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
                    <th>Tên sản phẩm</th>
                    <th>Giá</th>
                    <th>Thương hiệu</th>
                    <th>Danh mục</th>
                    <th>Vùng miền</th>
                    <th>Tồn kho</th>
                    <th>Đã bán</th>
                    <th>Thao tác</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td><img src="images/lapxuong-chitiet-1.png" alt="Lạp xưởng"></td>
                    <td>Lạp xưởng Đà Lạt</td>
                    <td>120,000đ</td>
                    <td>Đặc sản Đà Lạt</td>
                    <td>Thực phẩm chế biến</td>
                    <td>Miền Nam</td>
                    <td>50</td>
                    <td>120</td>
                    <td class="actions">
                        <button class="btn btn-info btn-sm" title="Xem" onclick="openModal('viewModal')"><i class="fas fa-eye"></i></button>
                        <button class="btn btn-warning btn-sm" title="Sửa" onclick="openModal('editModal')"><i
                                class="fas fa-edit"></i></button>
                        <button class="btn btn-danger btn-sm" title="Xóa" onclick="confirmDelete()"><i
                                class="fas fa-trash"></i></button>
                    </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td><img src="images/banhpia.png" alt="Bánh pía"></td>
                    <td>Bánh pía Sóc Trăng</td>
                    <td>85,000đ</td>
                    <td>Tân Huê Viên</td>
                    <td>Bánh</td>
                    <td>Miền Nam</td>
                    <td>100</td>
                    <td>250</td>
                    <td class="actions">
                        <button class="btn btn-info btn-sm" title="Xem" onclick="openModal('viewModal')"><i class="fas fa-eye"></i></button>
                        <button class="btn btn-warning btn-sm" title="Sửa" onclick="openModal('editModal')"><i class="fas fa-edit"></i></button>
                        <button class="btn btn-danger btn-sm" title="Xóa" onclick="confirmDelete()"><i class="fas fa-trash"></i></button>
                    </td>
                </tr>
                <tr>
                    <td>3</td>
                    <td><img src="images/nuocmamPhuQuoc.png" alt="Nước mắm"></td>
                    <td>Nước mắm Phú Quốc</td>
                    <td>95,000đ</td>
                    <td>Phú Quốc</td>
                    <td>Gia vị</td>
                    <td>Miền Nam</td>
                    <td>80</td>
                    <td>180</td>
                    <td class="actions">
                        <button class="btn btn-info btn-sm" title="Xem" onclick="openModal('viewModal')"><i class="fas fa-eye"></i></button>
                        <button class="btn btn-warning btn-sm" title="Sửa" onclick="openModal('editModal')"><i class="fas fa-edit"></i></button>
                        <button class="btn btn-danger btn-sm" title="Xóa" onclick="confirmDelete()"><i class="fas fa-trash"></i></button>
                    </td>
                </tr>
                <tr>
                    <td>4</td>
                    <td><img src="images/nemchuaThanhHoa.png" alt="Nem chua"></td>
                    <td>Nem chua Thanh Hóa</td>
                    <td>75,000đ</td>
                    <td>Thanh Hóa</td>
                    <td>Thực phẩm chế biến</td>
                    <td>Miền Bắc</td>
                    <td>60</td>
                    <td>95</td>
                    <td class="actions">
                        <button class="btn btn-info btn-sm" title="Xem" onclick="openModal('viewModal')"><i class="fas fa-eye"></i></button>
                        <button class="btn btn-warning btn-sm" title="Sửa" onclick="openModal('editModal')"><i class="fas fa-edit"></i></button>
                        <button class="btn btn-danger btn-sm" title="Xóa" onclick="confirmDelete()"><i class="fas fa-trash"></i></button>
                    </td>
                </tr>
                <tr>
                    <td>5</td>
                    <td><img src="images/trataxua.png" alt="Trà"></td>
                    <td>Trà Tà Xùa</td>
                    <td>180,000đ</td>
                    <td>Sơn La</td>
                    <td>Trà</td>
                    <td>Miền Bắc</td>
                    <td>40</td>
                    <td>75</td>
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
                <button>3</button>
                <button>4</button>
                <button>5</button>
                <button><i class="fas fa-chevron-right"></i></button>
            </div>
        </div>
    </div>
</main>

<!-- View Modal -->
<div class="modal" id="viewModal">
    <div class="modal-content" style="max-width: 700px;">
        <div class="modal-header">
            <h3><i class="fas fa-eye"></i> Chi tiết sản phẩm</h3>
            <button class="modal-close" onclick="closeModal('viewModal')">&times;</button>
        </div>
        <div class="modal-body">
            <div style="display: flex; gap: 20px;">
                <div style="flex: 0 0 200px;">
                    <img src="images/lapxuong-chitiet-1.png" alt="Lạp xưởng" style="width: 100%; border-radius: 10px;">
                </div>
                <div style="flex: 1;">
                    <h2 style="color: #2c3e50; margin-bottom: 15px;">Lạp xưởng Đà Lạt</h2>
                    <p style="margin-bottom: 10px;"><strong>ID:</strong> 1</p>
                    <p style="margin-bottom: 10px;"><strong>Giá:</strong> <span style="color: #e74c3c; font-size: 18px; font-weight: bold;">120,000đ</span></p>
                    <p style="margin-bottom: 10px;"><strong>Thương hiệu:</strong> Đặc sản Đà Lạt</p>
                    <p style="margin-bottom: 10px;"><strong>Danh mục:</strong> Thực phẩm chế biến</p>
                    <p style="margin-bottom: 10px;"><strong>Vùng miền:</strong> Miền Nam</p>
                    <p style="margin-bottom: 10px;"><strong>Quy cách:</strong> 500g</p>
                    <p style="margin-bottom: 10px;"><strong>Tồn kho:</strong> <span class="badge badge-success">50</span></p>
                    <p style="margin-bottom: 10px;"><strong>Đã bán:</strong> 120</p>
                    <p style="margin-bottom: 10px;"><strong>Ngày tạo:</strong> 01/12/2025</p>
                </div>
            </div>
            <div style="margin-top: 20px;">
                <h4 style="color: #2c3e50; margin-bottom: 10px;">Mô tả sản phẩm</h4>
                <p style="color: #666; line-height: 1.6;">Lạp xưởng Đà Lạt đặc biệt, được làm từ thịt heo tươi ngon, thơm ngậy, đậm đà hương vị truyền thống. Sản phẩm được chế biến theo công thức gia truyền, đảm bảo vệ sinh an toàn thực phẩm.</p>
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
    <div class="modal-content">
        <div class="modal-header">
            <h3><i class="fas fa-plus-circle"></i> Thêm sản phẩm mới</h3>
            <button class="modal-close" onclick="closeModal('addModal')">&times;</button>
        </div>
        <div class="modal-body">
            <form id="addProductForm">
                <div class="form-group">
                    <label>Hình ảnh sản phẩm</label>
                    <div class="file-upload" onclick="document.getElementById('productImage').click()">
                        <i class="fas fa-cloud-upload-alt"></i>
                        <p>Click để tải ảnh lên</p>
                        <input type="file" id="productImage" accept="image/*">
                    </div>
                </div>
                <div class="form-group">
                    <label>Tên sản phẩm *</label>
                    <input type="text" name="name" required placeholder="Nhập tên sản phẩm">
                </div>
                <div class="form-row">
                    <div class="form-group">
                        <label>Giá (VNĐ) *</label>
                        <input type="number" name="price" required placeholder="Nhập giá">
                    </div>
                    <div class="form-group">
                        <label>Số lượng *</label>
                        <input type="number" name="quantity" required placeholder="Nhập số lượng">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group">
                        <label>Thương hiệu</label>
                        <select name="brand">
                            <option value="">-- Chọn thương hiệu --</option>
                            <option value="1">Đặc sản Đà Lạt</option>
                            <option value="2">Tân Huê Viên</option>
                            <option value="3">Phú Quốc</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Danh mục *</label>
                        <select name="category" required>
                            <option value="">-- Chọn danh mục --</option>
                            <option value="1">Bánh</option>
                            <option value="2">Trà</option>
                            <option value="3">Gia vị</option>
                            <option value="4">Thực phẩm chế biến</option>
                            <option value="5">Đồ khô</option>
                        </select>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group">
                        <label>Vùng miền *</label>
                        <select name="region" required>
                            <option value="">-- Chọn vùng miền --</option>
                            <option value="Miền Bắc">Miền Bắc</option>
                            <option value="Miền Trung">Miền Trung</option>
                            <option value="Miền Nam">Miền Nam</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Quy cách</label>
                        <input type="text" name="specification" placeholder="VD: 500g, 1kg, Hộp 10 cái...">
                    </div>
                </div>
                <div class="form-group">
                    <label>Mô tả sản phẩm</label>
                    <textarea name="description" placeholder="Nhập mô tả chi tiết sản phẩm..."></textarea>
                </div>
            </form>
        </div>
        <div class="modal-footer">
            <button class="btn" onclick="closeModal('addModal')">Hủy</button>
            <button class="btn btn-primary" onclick="saveProduct()">
                <i class="fas fa-save"></i> Lưu sản phẩm
            </button>
        </div>
    </div>
</div>

<!-- Edit Modal -->
<div class="modal" id="editModal">
    <div class="modal-content">
        <div class="modal-header">
            <h3><i class="fas fa-edit"></i> Sửa sản phẩm</h3>
            <button class="modal-close" onclick="closeModal('editModal')">&times;</button>
        </div>
        <div class="modal-body">
            <form id="editProductForm">
                <div class="form-group">
                    <label>Hình ảnh sản phẩm</label>
                    <img src="images/lapxuong-chitiet-1.png" class="image-preview" alt="Preview">
                    <div class="file-upload" onclick="document.getElementById('editProductImage').click()"
                         style="margin-top: 10px;">
                        <i class="fas fa-cloud-upload-alt"></i>
                        <p>Click để thay đổi ảnh</p>
                        <input type="file" id="editProductImage" accept="image/*">
                    </div>
                </div>
                <div class="form-group">
                    <label>Tên sản phẩm *</label>
                    <input type="text" name="name" required value="Lạp xưởng Đà Lạt">
                </div>
                <div class="form-row">
                    <div class="form-group">
                        <label>Giá (VNĐ) *</label>
                        <input type="number" name="price" required value="120000">
                    </div>
                    <div class="form-group">
                        <label>Số lượng *</label>
                        <input type="number" name="quantity" required value="50">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group">
                        <label>Thương hiệu</label>
                        <select name="brand">
                            <option value="">-- Chọn thương hiệu --</option>
                            <option value="1" selected>Đặc sản Đà Lạt</option>
                            <option value="2">Tân Huê Viên</option>
                            <option value="3">Phú Quốc</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Danh mục *</label>
                        <select name="category" required>
                            <option value="">-- Chọn danh mục --</option>
                            <option value="1">Bánh</option>
                            <option value="2">Trà</option>
                            <option value="3">Gia vị</option>
                            <option value="4" selected>Thực phẩm chế biến</option>
                            <option value="5">Đồ khô</option>
                        </select>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group">
                        <label>Vùng miền *</label>
                        <select name="region" required>
                            <option value="">-- Chọn vùng miền --</option>
                            <option value="Miền Bắc">Miền Bắc</option>
                            <option value="Miền Trung">Miền Trung</option>
                            <option value="Miền Nam" selected>Miền Nam</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Quy cách</label>
                        <input type="text" name="specification" value="500g">
                    </div>
                </div>
                <div class="form-group">
                    <label>Mô tả sản phẩm</label>
                    <textarea name="description">Lạp xưởng Đà Lạt đặc biệt, được làm từ thịt heo tươi ngon, thơm ngậy, đậm đà hương vị truyền thống.</textarea>
                </div>
            </form>
        </div>
        <div class="modal-footer">
            <button class="btn" onclick="closeModal('editModal')">Hủy</button>
            <button class="btn btn-primary" onclick="updateProduct()">
                <i class="fas fa-save"></i> Cập nhật
            </button>
        </div>
    </div>
</div>

<script src="js/admin.js"></script>
</body>
</html>
