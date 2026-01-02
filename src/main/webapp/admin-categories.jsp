<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    // If accessed directly (no controller attributes), redirect to the controller.
    // Avoid redirect loop by skipping redirect when we're already on /admin/categories.
    if (request.getAttribute("categories") == null && !request.getRequestURI().endsWith("/admin/categories")) {
        String qs = request.getQueryString();
        response.sendRedirect(request.getContextPath() + "/admin/categories" + (qs != null ? ("?" + qs) : ""));
        return;
    }
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Danh mục - Admin</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/admin.css">
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
                <li><a href="<%=request.getContextPath()%>/admin-dashboard.jsp"><i class="fas fa-home"></i> <span>Dashboard</span></a></li>

                <p class="menu-section">Quản lý sản phẩm</p>
                <li><a href="<%=request.getContextPath()%>/admin-products.jsp"><i class="fas fa-box"></i> <span>Sản phẩm</span></a></li>
                <li><a href="<%=request.getContextPath()%>/admin/categories" class="active"><i class="fas fa-tags"></i> <span>Danh mục</span></a></li>
                <li><a href="<%=request.getContextPath()%>/admin-brands.jsp"><i class="fas fa-trademark"></i> <span>Thương hiệu</span></a></li>
                <li><a href="<%=request.getContextPath()%>/admin-banners.jsp"><i class="fas fa-image"></i> <span>Banner</span></a></li>

                <p class="menu-section">Khuyến mãi</p>
                <li><a href="<%=request.getContextPath()%>/admin-product-promotions.jsp"><i class="fas fa-percent"></i> <span>KM Sản phẩm</span></a></li>
                <li><a href="<%=request.getContextPath()%>/admin-category-promotions.jsp"><i class="fas fa-tag"></i> <span>KM Danh mục</span></a></li>
                <li><a href="<%=request.getContextPath()%>/admin-discount-vouchers.jsp"><i class="fas fa-ticket-alt"></i> <span>Phiếu giảm giá</span></a></li>

                <p class="menu-section">Đơn hàng</p>
                <li><a href="<%=request.getContextPath()%>/admin-orders.jsp"><i class="fas fa-shopping-cart"></i> <span>Đơn hàng</span></a></li>

                <p class="menu-section">Người dùng</p>
                <li><a href="<%=request.getContextPath()%>/admin-users.jsp"><i class="fas fa-users"></i> <span>Người dùng</span></a></li>
                <li><a href="<%=request.getContextPath()%>/admin-shipping-info.jsp"><i class="fas fa-map-marker-alt"></i> <span>Địa chỉ giao</span></a></li>
                <li><a href="<%=request.getContextPath()%>/admin-reviews.jsp"><i class="fas fa-star"></i> <span>Đánh giá</span></a></li>

                <p class="menu-section">Nội dung</p>
                <li><a href="<%=request.getContextPath()%>/admin-news.jsp"><i class="fas fa-newspaper"></i> <span>Tin tức</span></a></li>

                <p class="menu-section">Hệ thống</p>
                <li><a href="<%=request.getContextPath()%>/index.jsp"><i class="fas fa-external-link-alt"></i> <span>Xem Website</span></a></li>
                <li><a href="<%=request.getContextPath()%>/login.jsp"><i class="fas fa-sign-out-alt"></i> <span>Đăng xuất</span></a></li>
            </ul>
        </nav>
    </aside>

    <!-- Main Content -->
    <main class="admin-main">
        <header class="admin-header">
            <h1>Quản lý Danh mục sản phẩm</h1>
            <div class="user-info">
                <span>Xin chào, Admin</span>
                <img src="<%=request.getContextPath()%>/images/user.png" alt="Admin">
            </div>
        </header>

        <div class="admin-content">
            <div class="data-table-container">
                <div class="table-header">
                    <h2><i class="fas fa-tags"></i> Danh sách danh mục</h2>
                    <div class="table-actions">
                        <input type="text" class="search-box" placeholder="Tìm kiếm danh mục...">
                        <button class="btn btn-primary" onclick="openModal('addModal')">
                            <i class="fas fa-plus"></i> Thêm mới
                        </button>
                    </div>
                </div>

                <c:if test="${param.error == 'empty'}">
                    <div class="alert alert-danger">Tên danh mục không được để trống.</div>
                </c:if>
                <c:if test="${param.error == 'db'}">
                    <div class="alert alert-danger">Không thể lưu danh mục. Vui lòng kiểm tra kết nối DB hoặc ràng buộc dữ liệu.</div>
                </c:if>
                <c:if test="${param.success == '1'}">
                    <div class="alert alert-success">Thêm danh mục thành công.</div>
                </c:if>

                <div style="margin: 8px 0; font-size: 12px; color: #666;">
                    Tổng danh mục: <c:out value="${totalItems}" default="0"/>
                </div>

                <table class="data-table">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>ID</th>
                            <th>Tên danh mục</th>
                            <th>Số sản phẩm</th>
                            <th>Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:choose>
                            <c:when test="${not empty categories}">
                                <c:set var="startIndex" value="${(currentPage - 1) * pageSize}"/>
                                <c:forEach var="cat" items="${categories}" varStatus="st">
                                    <tr>
                                        <td><c:out value="${startIndex + st.index + 1}"/></td>
                                        <td><c:out value="${cat.id}"/></td>
                                        <td><c:out value="${cat.name}"/></td>
                                        <td>-</td>
                                        <td class="actions">
                                            <button type="button" class="btn btn-warning btn-sm js-edit-category" title="Sửa"
                                                    data-id="<c:out value='${cat.id}'/>" data-name="<c:out value='${cat.name}'/>">
                                                <i class="fas fa-edit"></i>
                                            </button>

                                            <form action="<%=request.getContextPath()%>/admin/category/delete" method="post" style="display:inline;">
                                                <input type="hidden" name="id" value="<c:out value='${cat.id}'/>"/>
                                                <button type="submit" class="btn btn-danger btn-sm" title="Xóa" onclick="return confirm('Bạn có chắc chắn muốn xóa danh mục này?')">
                                                    <i class="fas fa-trash"></i>
                                                </button>
                                            </form>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <tr>
                                    <td colspan="5">Chưa có danh mục nào trong database.</td>
                                </tr>
                            </c:otherwise>
                        </c:choose>
                    </tbody>
                </table>

                <div class="pagination">
                    <c:set var="ctx" value="${pageContext.request.contextPath}"/>
                    <c:set var="cp" value="${currentPage}"/>
                    <c:set var="tp" value="${totalPages}"/>

                    <c:if test="${cp > 1}">
                        <a class="btn" href="${ctx}/admin/categories?page=${cp-1}"><i class="fas fa-chevron-left"></i></a>
                    </c:if>
                    <c:if test="${cp <= 1}">
                        <button disabled><i class="fas fa-chevron-left"></i></button>
                    </c:if>

                    <c:forEach var="i" begin="1" end="${tp}">
                        <c:choose>
                            <c:when test="${i == cp}">
                                <button class="active" disabled><c:out value="${i}"/></button>
                            </c:when>
                            <c:otherwise>
                                <a class="btn" href="${ctx}/admin/categories?page=${i}"><c:out value="${i}"/></a>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>

                    <c:if test="${cp < tp}">
                        <a class="btn" href="${ctx}/admin/categories?page=${cp+1}"><i class="fas fa-chevron-right"></i></a>
                    </c:if>
                    <c:if test="${cp >= tp}">
                        <button disabled><i class="fas fa-chevron-right"></i></button>
                    </c:if>
                </div>
            </div>
        </div>
    </main>

    <!-- Add Modal -->
    <div class="modal" id="addModal">
        <div class="modal-content">
            <div class="modal-header">
                <h3><i class="fas fa-plus-circle"></i> Thêm danh mục mới</h3>
                <button class="modal-close" onclick="closeModal('addModal')">&times;</button>
            </div>
            <div class="modal-body">
                <form id="addCategoryForm" action="<%=request.getContextPath()%>/admin/category/add" method="post">
                    <div class="form-group">
                        <label>Tên danh mục *</label>
                        <input type="text" name="categoryName" required placeholder="Nhập tên danh mục" value="<c:out value='${param.categoryName}'/>">
                        <c:if test="${param.error == 'duplicate'}">
                            <div style="margin-top:6px;color:red;font-size:13px;">Danh mục thêm vào bị trùng</div>
                        </c:if>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn" onclick="closeModal('addModal')">Hủy</button>
                        <button type="submit" class="btn btn-primary">
                            <i class="fas fa-save"></i> Lưu
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Edit Modal -->
    <div class="modal" id="editModal">
        <div class="modal-content">
            <div class="modal-header">
                <h3><i class="fas fa-edit"></i> Sửa danh mục</h3>
                <button class="modal-close" onclick="closeModal('editModal')">&times;</button>
            </div>
            <div class="modal-body">
                <form id="editCategoryForm" action="<%=request.getContextPath()%>/admin/category/update" method="post">
                    <input type="hidden" name="id" id="editCategoryId" />
                    <div class="form-group">
                        <label>Tên danh mục *</label>
                        <input type="text" name="categoryName" id="editCategoryName" required>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn" onclick="closeModal('editModal')">Hủy</button>
                        <button type="submit" class="btn btn-primary">
                            <i class="fas fa-save"></i> Cập nhật
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script src="<%=request.getContextPath()%>/js/admin.js?v=20251224"></script>
</body>
</html>

