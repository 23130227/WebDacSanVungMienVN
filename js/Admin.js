// Admin JavaScript Functions

// Modal Functions
function openModal(modalId) {
    document.getElementById(modalId).classList.add('active');
    document.body.style.overflow = 'hidden';
}

function closeModal(modalId) {
    document.getElementById(modalId).classList.remove('active');
    document.body.style.overflow = 'auto';
}

// Close modal when clicking outside
document.addEventListener('click', function(e) {
    if (e.target.classList.contains('modal')) {
        e.target.classList.remove('active');
        document.body.style.overflow = 'auto';
    }
});

// Close modal with Escape key
document.addEventListener('keydown', function(e) {
    if (e.key === 'Escape') {
        const modals = document.querySelectorAll('.modal.active');
        modals.forEach(modal => {
            modal.classList.remove('active');
        });
        document.body.style.overflow = 'auto';
    }
});

// Confirm Delete
function confirmDelete() {
    if (confirm('Bạn có chắc chắn muốn xóa mục này?')) {
        showAlert('Đã xóa thành công!', 'success');
    }
}

// Show Alert
function showAlert(message, type = 'success') {
    const alertDiv = document.createElement('div');
    alertDiv.className = `alert alert-${type}`;
    alertDiv.innerHTML = `
        <i class="fas fa-${type === 'success' ? 'check-circle' : 'exclamation-circle'}"></i>
        ${message}
    `;

    const content = document.querySelector('.admin-content');
    content.insertBefore(alertDiv, content.firstChild);

    setTimeout(() => {
        alertDiv.remove();
    }, 3000);
}

// Product Functions
function saveProduct() {
    const form = document.getElementById('addProductForm');
    if (form && form.checkValidity()) {
        showAlert('Đã thêm sản phẩm thành công!', 'success');
        closeModal('addModal');
        form.reset();
    } else if (form) {
        form.reportValidity();
    }
}

function updateProduct() {
    const form = document.getElementById('editProductForm');
    if (form && form.checkValidity()) {
        showAlert('Đã cập nhật sản phẩm thành công!', 'success');
        closeModal('editModal');
    } else if (form) {
        form.reportValidity();
    }
}

// Category Functions
function saveCategory() {
    const form = document.getElementById('addCategoryForm');
    if (form && form.checkValidity()) {
        showAlert('Đã thêm danh mục thành công!', 'success');
        closeModal('addModal');
        form.reset();
    } else if (form) {
        form.reportValidity();
    }
}

function updateCategory() {
    const form = document.getElementById('editCategoryForm');
    if (form && form.checkValidity()) {
        showAlert('Đã cập nhật danh mục thành công!', 'success');
        closeModal('editModal');
    } else if (form) {
        form.reportValidity();
    }
}

// Brand Functions
function saveBrand() {
    const form = document.getElementById('addBrandForm');
    if (form && form.checkValidity()) {
        showAlert('Đã thêm thương hiệu thành công!', 'success');
        closeModal('addModal');
        form.reset();
    } else if (form) {
        form.reportValidity();
    }
}

function updateBrand() {
    const form = document.getElementById('editBrandForm');
    if (form && form.checkValidity()) {
        showAlert('Đã cập nhật thương hiệu thành công!', 'success');
        closeModal('editModal');
    } else if (form) {
        form.reportValidity();
    }
}

// Banner Functions
function saveBanner() {
    const form = document.getElementById('addBannerForm');
    if (form && form.checkValidity()) {
        showAlert('Đã thêm banner thành công!', 'success');
        closeModal('addModal');
        form.reset();
    } else if (form) {
        form.reportValidity();
    }
}

function updateBanner() {
    showAlert('Đã cập nhật banner thành công!', 'success');
    closeModal('editModal');
}

// Product Discount Functions
function saveProductDiscount() {
    const form = document.getElementById('addDiscountForm');
    if (form && form.checkValidity()) {
        showAlert('Đã thêm khuyến mãi sản phẩm thành công!', 'success');
        closeModal('addModal');
        form.reset();
    } else if (form) {
        form.reportValidity();
    }
}

function updateProductDiscount() {
    const form = document.getElementById('editDiscountForm');
    if (form && form.checkValidity()) {
        showAlert('Đã cập nhật khuyến mãi sản phẩm thành công!', 'success');
        closeModal('editModal');
    } else if (form) {
        form.reportValidity();
    }
}

// Category Discount Functions
function saveCategoryDiscount() {
    const form = document.getElementById('addCategoryDiscountForm');
    if (form && form.checkValidity()) {
        showAlert('Đã thêm khuyến mãi danh mục thành công!', 'success');
        closeModal('addModal');
        form.reset();
    } else if (form) {
        form.reportValidity();
    }
}

function updateCategoryDiscount() {
    const form = document.getElementById('editCategoryDiscountForm');
    if (form && form.checkValidity()) {
        showAlert('Đã cập nhật khuyến mãi danh mục thành công!', 'success');
        closeModal('editModal');
    } else if (form) {
        form.reportValidity();
    }
}

// Voucher Functions
function saveVoucher() {
    const form = document.getElementById('addVoucherForm');
    if (form && form.checkValidity()) {
        showAlert('Đã thêm phiếu giảm giá thành công!', 'success');
        closeModal('addModal');
        form.reset();
    } else if (form) {
        form.reportValidity();
    }
}

function updateVoucher() {
    const form = document.getElementById('editVoucherForm');
    if (form && form.checkValidity()) {
        showAlert('Đã cập nhật phiếu giảm giá thành công!', 'success');
        closeModal('editModal');
    } else if (form) {
        form.reportValidity();
    }
}

// Order Functions
function updateOrderStatus() {
    const form = document.getElementById('updateOrderForm');
    if (form && form.checkValidity()) {
        showAlert('Đã cập nhật trạng thái đơn hàng thành công!', 'success');
        closeModal('updateModal');
    } else if (form) {
        form.reportValidity();
    }
}

function printOrder() {
    window.print();
}

// User Functions
function saveUser() {
    const form = document.getElementById('addUserForm');
    if (form && form.checkValidity()) {
        showAlert('Đã thêm người dùng thành công!', 'success');
        closeModal('addModal');
        form.reset();
    } else if (form) {
        form.reportValidity();
    }
}

function updateUser() {
    const form = document.getElementById('editUserForm');
    if (form && form.checkValidity()) {
        showAlert('Đã cập nhật người dùng thành công!', 'success');
        closeModal('editModal');
    } else if (form) {
        form.reportValidity();
    }
}

// News Functions
function saveNews() {
    const form = document.getElementById('addNewsForm');
    if (form && form.checkValidity()) {
        showAlert('Đã đăng bài viết thành công!', 'success');
        closeModal('addModal');
        form.reset();
    } else if (form) {
        form.reportValidity();
    }
}

function updateNews() {
    const form = document.getElementById('editNewsForm');
    if (form && form.checkValidity()) {
        showAlert('Đã cập nhật bài viết thành công!', 'success');
        closeModal('editModal');
    } else if (form) {
        form.reportValidity();
    }
}

// Search functionality
document.addEventListener('DOMContentLoaded', function() {
    const searchBoxes = document.querySelectorAll('.search-box');
    searchBoxes.forEach(box => {
        if (box.tagName === 'INPUT') {
            box.addEventListener('input', function() {
                const searchTerm = this.value.toLowerCase();
                const table = document.querySelector('.data-table tbody');
                if (table) {
                    const rows = table.querySelectorAll('tr');
                    rows.forEach(row => {
                        const text = row.textContent.toLowerCase();
                        row.style.display = text.includes(searchTerm) ? '' : 'none';
                    });
                }
            });
        }
    });

    // File upload preview
    const fileInputs = document.querySelectorAll('input[type="file"]');
    fileInputs.forEach(input => {
        input.addEventListener('change', function() {
            const file = this.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    const preview = input.closest('.form-group').querySelector('.image-preview');
                    if (preview) {
                        preview.src = e.target.result;
                    }
                };
                reader.readAsDataURL(file);
            }
        });
    });

    // Pagination functionality
    const paginationButtons = document.querySelectorAll('.pagination button:not(:first-child):not(:last-child)');
    paginationButtons.forEach(btn => {
        btn.addEventListener('click', function() {
            paginationButtons.forEach(b => b.classList.remove('active'));
            this.classList.add('active');
        });
    });
});

// Format currency
function formatCurrency(amount) {
    return new Intl.NumberFormat('vi-VN', {
        style: 'currency',
        currency: 'VND'
    }).format(amount);
}

// Format date
function formatDate(dateString) {
    const date = new Date(dateString);
    return date.toLocaleDateString('vi-VN');
}

// Export data to CSV
function exportToCSV(tableId, filename) {
    const table = document.getElementById(tableId);
    if (!table) return;

    let csv = [];
    const rows = table.querySelectorAll('tr');

    rows.forEach(row => {
        const cols = row.querySelectorAll('td, th');
        const rowData = [];
        cols.forEach(col => {
            rowData.push('"' + col.innerText.replace(/"/g, '""') + '"');
        });
        csv.push(rowData.join(','));
    });

    const csvContent = csv.join('\n');
    const blob = new Blob(['\ufeff' + csvContent], { type: 'text/csv;charset=utf-8;' });
    const link = document.createElement('a');
    link.href = URL.createObjectURL(blob);
    link.download = filename + '.csv';
    link.click();
}

// Toggle sidebar on mobile
function toggleSidebar() {
    const sidebar = document.querySelector('.admin-sidebar');
    sidebar.classList.toggle('active');
}

// Logout confirmation
function confirmLogout() {
    if (confirm('Bạn có chắc chắn muốn đăng xuất?')) {
        window.location.href = 'DangNhap.html';
    }
}

