<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    // Redirect to controller when opened directly.
    if (request.getAttribute("banners") == null && !request.getRequestURI().endsWith("/admin/banners")) {
        String qs = request.getQueryString();
        response.sendRedirect(request.getContextPath() + "/admin/banners" + (qs != null ? ("?" + qs) : ""));
        return;
    }
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Banner - Admin</title>
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

                <li class="menu-section">Quản lý sản phẩm</li>
                <li><a href="<%=request.getContextPath()%>/admin-products.jsp"><i class="fas fa-box"></i> <span>Sản phẩm</span></a></li>
                <li><a href="<%=request.getContextPath()%>/admin/categories"><i class="fas fa-tags"></i> <span>Danh mục</span></a></li>
                <li><a href="<%=request.getContextPath()%>/admin-brands.jsp"><i class="fas fa-trademark"></i> <span>Thương hiệu</span></a></li>
                <li><a href="<%=request.getContextPath()%>/admin/banners" class="active"><i class="fas fa-image"></i> <span>Banner</span></a></li>

                <li class="menu-section">Khuyến mãi</li>
                <li><a href="<%=request.getContextPath()%>/admin-product-promotions.jsp"><i class="fas fa-percent"></i> <span>KM Sản phẩm</span></a></li>
                <li><a href="<%=request.getContextPath()%>/admin-category-promotions.jsp"><i class="fas fa-tag"></i> <span>KM Danh mục</span></a></li>
                <li><a href="<%=request.getContextPath()%>/admin-discount-vouchers.jsp"><i class="fas fa-ticket-alt"></i> <span>Phiếu giảm giá</span></a></li>

                <li class="menu-section">Đơn hàng</li>
                <li><a href="<%=request.getContextPath()%>/admin-orders.jsp"><i class="fas fa-shopping-cart"></i> <span>Đơn hàng</span></a></li>

                <li class="menu-section">Người dùng</li>
                <li><a href="<%=request.getContextPath()%>/admin-users.jsp"><i class="fas fa-users"></i> <span>Người dùng</span></a></li>
                <li><a href="<%=request.getContextPath()%>/admin-shipping-info.jsp"><i class="fas fa-map-marker-alt"></i> <span>Địa chỉ giao</span></a></li>
                <li><a href="<%=request.getContextPath()%>/admin-reviews.jsp"><i class="fas fa-star"></i> <span>Đánh giá</span></a></li>

                <li class="menu-section">Nội dung</li>
                <li><a href="<%=request.getContextPath()%>/admin-news.jsp"><i class="fas fa-newspaper"></i> <span>Tin tức</span></a></li>

                <li class="menu-section">Hệ thống</li>
                <li><a href="<%=request.getContextPath()%>/index.jsp"><i class="fas fa-external-link-alt"></i> <span>Xem Website</span></a></li>
                <li><a href="<%=request.getContextPath()%>/login.jsp"><i class="fas fa-sign-out-alt"></i> <span>Đăng xuất</span></a></li>
            </ul>
        </nav>
    </aside>

    <!-- Main Content -->
    <main class="admin-main">
        <header class="admin-header">
            <h1>Quản lý Banner</h1>
            <div class="user-info">
                <span>Xin chào, Admin</span>
                <img src="<%=request.getContextPath()%>/images/user.png" alt="Admin">
            </div>
        </header>

        <div class="admin-content">
            <div class="data-table-container">
                <div class="table-header">
                    <h2><i class="fas fa-image"></i> Danh sách banner</h2>
                    <div class="table-actions">
                        <button class="btn btn-primary" onclick="openModal('addModal')">
                            <i class="fas fa-plus"></i> Thêm mới
                        </button>
                    </div>
                </div>

                <c:if test="${param.error == 'empty'}"><div class="alert alert-danger">Vui lòng chọn ảnh banner.</div></c:if>
                <c:if test="${param.error == 'upload'}"><div class="alert alert-danger">Upload ảnh thất bại.</div></c:if>
                <c:if test="${param.error == 'db'}"><div class="alert alert-danger">Lỗi lưu dữ liệu.</div></c:if>
                <c:if test="${param.error == 'id'}"><div class="alert alert-danger">ID không hợp lệ.</div></c:if>
                <c:if test="${param.error == 'notfound'}"><div class="alert alert-danger">Không tìm thấy banner.</div></c:if>
                <c:if test="${param.success == '1'}"><div class="alert alert-success">Thao tác thành công.</div></c:if>

                <table class="data-table">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>ID</th>
                            <th>Hình ảnh</th>
                            <th>Đường dẫn</th>
                            <th>Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:choose>
                            <c:when test="${not empty banners}">
                                <c:forEach var="b" items="${banners}" varStatus="st">
                                    <tr>
                                        <td><c:out value="${st.index + 1}"/></td>
                                        <td><c:out value="${b.id}"/></td>
                                        <td>
                                            <c:set var="imgPath" value="${b.image}"/>
                                            <c:if test="${fn:startsWith(imgPath, '/')}">
                                                <c:set var="imgPath" value="${fn:substring(imgPath, 1, fn:length(imgPath))}"/>
                                            </c:if>
                                            <img src="<%=request.getContextPath()%>/<c:out value='${imgPath}'/>" alt="Banner" style="width: 200px; height: auto;">
                                        </td>
                                        <td><c:out value="${b.image}"/></td>
                                        <td class="actions">
                                            <button class="btn btn-warning btn-sm js-edit-banner"
                                                    type="button"
                                                    title="Sửa"
                                                    data-id="<c:out value='${b.id}'/>"
                                                    data-image="<c:out value='${b.image}'/>">
                                                <i class="fas fa-edit"></i>
                                            </button>

                                            <form action="<%=request.getContextPath()%>/admin/banner/delete" method="post" style="display:inline;">
                                                <input type="hidden" name="id" value="<c:out value='${b.id}'/>"/>
                                                <button class="btn btn-danger btn-sm" type="submit" title="Xóa"
                                                        onclick="return confirm('Bạn có chắc chắn muốn xóa banner này?')">
                                                    <i class="fas fa-trash"></i>
                                                </button>
                                            </form>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <tr><td colspan="5">Chưa có banner.</td></tr>
                            </c:otherwise>
                        </c:choose>
                    </tbody>
                </table>

                <div class="pagination">
                    <c:set var="ctx" value="${pageContext.request.contextPath}"/>
                    <c:set var="cp" value="${currentPage}"/>
                    <c:set var="tp" value="${totalPages}"/>

                    <c:if test="${cp > 1}">
                        <a class="btn" href="${ctx}/admin/banners?page=${cp-1}"><i class="fas fa-chevron-left"></i></a>
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
                                <a class="btn" href="${ctx}/admin/banners?page=${i}"><c:out value="${i}"/></a>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>

                    <c:if test="${cp < tp}">
                        <a class="btn" href="${ctx}/admin/banners?page=${cp+1}"><i class="fas fa-chevron-right"></i></a>
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
                <h3><i class="fas fa-plus-circle"></i> Thêm banner mới</h3>
                <button class="modal-close" onclick="closeModal('addModal')">&times;</button>
            </div>
            <div class="modal-body">
                <form id="addBannerForm" action="<%=request.getContextPath()%>/admin/banner/add" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label>Hình ảnh banner *
                            <span id="bannerImageError" style="display:none;margin-left:8px;color:#dc3545;font-size:13px;">Cần thêm ảnh mới có thể đăng lên</span>
                        </label>
                        <div class="file-upload" onclick="document.getElementById('bannerImage').click()">
                            <i class="fas fa-cloud-upload-alt"></i>
                            <p>Click để tải ảnh lên</p>
                            <input type="file" id="bannerImage" name="bannerImage" accept="image/*" required>
                            <img class="image-preview" src="" style="display:block; max-width:100%; margin-top:10px;" alt="Preview" />
                        </div>
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
                <h3><i class="fas fa-edit"></i> Sửa banner</h3>
                <button class="modal-close" onclick="closeModal('editModal')">&times;</button>
            </div>
            <div class="modal-body">
                <form id="editBannerForm" action="<%=request.getContextPath()%>/admin/banner/update" method="post" enctype="multipart/form-data">
                    <input type="hidden" id="editBannerId" name="id" />
                    <div class="form-group">
                        <label>Hình ảnh hiện tại</label>
                        <img id="editBannerPreview" src="" style="width: 100%; border-radius: 10px;" alt="Preview">
                    </div>
                    <div class="form-group">
                        <label>Thay đổi hình ảnh</label>
                        <div class="file-upload" onclick="document.getElementById('editBannerImage').click()">
                            <i class="fas fa-cloud-upload-alt"></i>
                            <p>Click để thay đổi ảnh (có thể bỏ trống nếu không đổi)</p>
                            <input type="file" id="editBannerImage" name="bannerImage" accept="image/*">
                            <img class="image-preview" src="" style="display:block; max-width:100%; margin-top:10px;" alt="Preview" />
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button class="btn" onclick="closeModal('editModal')">Hủy</button>
                <button class="btn btn-primary" type="button" onclick="document.getElementById('editBannerForm').requestSubmit()">
                    <i class="fas fa-save"></i> Cập nhật
                </button>
            </div>
        </div>
    </div>

    <script src="<%=request.getContextPath()%>/js/admin.js?v=20251228"></script>
</body>
</html>
