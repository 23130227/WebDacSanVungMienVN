<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Đánh giá - Admin</title>
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
                <li><a href="AdminDanhGia.html" class="active"><i class="fas fa-star"></i> <span>Đánh giá</span></a></li>

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
            <h1>Quản lý Đánh giá sản phẩm</h1>
            <div class="user-info">
                <span>Xin chào, Admin</span>
                <img src="images/user.png" alt="Admin">
            </div>
        </header>

        <div class="admin-content">
            <div class="data-table-container">
                <div class="table-header">
                    <h2><i class="fas fa-star"></i> Danh sách đánh giá</h2>
                    <div class="table-actions">
                        <select class="search-box" style="width: 150px;">
                            <option value="">Tất cả</option>
                            <option value="5">5 sao</option>
                            <option value="4">4 sao</option>
                            <option value="3">3 sao</option>
                            <option value="2">2 sao</option>
                            <option value="1">1 sao</option>
                        </select>
                        <input type="text" class="search-box" placeholder="Tìm kiếm đánh giá...">
                    </div>
                </div>
                <table class="data-table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Sản phẩm</th>
                            <th>Người đánh giá</th>
                            <th>Nội dung</th>
                            <th>Đánh giá</th>
                            <th>Ngày đánh giá</th>
                            <th>Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Lạp xưởng Đà Lạt</td>
                            <td>Nguyễn Văn A</td>
                            <td>Sản phẩm rất ngon, đóng gói cẩn thận, giao hàng nhanh!</td>
                            <td>
                                <span style="color: #f39c12;">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </span>
                            </td>
                            <td>06/12/2025 10:30</td>
                            <td class="actions">
                                <button class="btn btn-danger btn-sm" title="Xóa" onclick="confirmDelete()"><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Bánh pía Sóc Trăng</td>
                            <td>Trần Thị B</td>
                            <td>Bánh thơm ngon, vị truyền thống. Sẽ mua lại!</td>
                            <td>
                                <span style="color: #f39c12;">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </span>
                            </td>
                            <td>05/12/2025 15:45</td>
                            <td class="actions">
                                <button class="btn btn-danger btn-sm" title="Xóa"><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Nước mắm Phú Quốc</td>
                            <td>Lê Văn C</td>
                            <td>Nước mắm đậm đà, đúng vị Phú Quốc. Tuyệt vời!</td>
                            <td>
                                <span style="color: #f39c12;">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </span>
                            </td>
                            <td>05/12/2025 09:20</td>
                            <td class="actions">
                                <button class="btn btn-danger btn-sm" title="Xóa"><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Trà Tà Xùa</td>
                            <td>Phạm Thị D</td>
                            <td>Trà thơm, vị nhẹ nhàng. Đóng gói đẹp mắt.</td>
                            <td>
                                <span style="color: #f39c12;">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </span>
                            </td>
                            <td>04/12/2025 20:15</td>
                            <td class="actions">
                                <button class="btn btn-danger btn-sm" title="Xóa"><i class="fas fa-trash"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>Nem chua Thanh Hóa</td>
                            <td>Hoàng Văn E</td>
                            <td>Nem chua chất lượng tốt, đúng vị miền Bắc.</td>
                            <td>
                                <span style="color: #f39c12;">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                    <i class="far fa-star"></i>
                                </span>
                            </td>
                            <td>03/12/2025 14:00</td>
                            <td class="actions">
                                <button class="btn btn-danger btn-sm" title="Xóa"><i class="fas fa-trash"></i></button>
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

    <script src="js/admin.js"></script>
</body>
</html>

