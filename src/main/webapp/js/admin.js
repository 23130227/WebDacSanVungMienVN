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
document.addEventListener('click', function (e) {
    if (e.target.classList.contains('modal')) {
        e.target.classList.remove('active');
        document.body.style.overflow = 'auto';
    }
});

// Close modal with Escape key
document.addEventListener('keydown', function (e) {
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

// Banner edit helper
function openEditBanner(id, imagePath) {
    const idEl = document.getElementById('editBannerId');
    const previewEl = document.getElementById('editBannerPreview');

    if (!idEl || !previewEl) {
        console.warn('[admin.js] Edit banner modal elements not found');
        return;
    }

    idEl.value = id;

    // imagePath stored in DB is usually like: images/banners/xxx.png
    // We build full URL with current context path.
    const ctx = (window.location.pathname.split('/')[1] ? '/' + window.location.pathname.split('/')[1] : '');
    const normalized = (imagePath || '').replace(/^\/+/, '');
    previewEl.src = normalized ? (ctx + '/' + normalized) : '';

    openModal('editModal');
}

// Search functionality
document.addEventListener('DOMContentLoaded', function () {
    const searchBoxes = document.querySelectorAll('.search-box');
    searchBoxes.forEach(box => {
        if (box.tagName === 'INPUT') {
            box.addEventListener('input', function () {
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

    // File upload preview (supports both add/edit modals)
    const fileInputs = document.querySelectorAll('input[type="file"]');
    fileInputs.forEach(input => {
        input.addEventListener('change', function () {
            const file = this.files && this.files[0];
            if (!file) return;

            const reader = new FileReader();
            reader.onload = function (e) {
                // Prefer an .image-preview in the same "file-upload" block.
                const host = input.closest('.file-upload') || input.closest('.form-group') || document;
                const preview = host.querySelector('.image-preview');
                if (preview) {
                    preview.src = e.target.result;
                    preview.style.display = 'block';
                }
            };
            reader.readAsDataURL(file);
        });
    });

    // Pagination functionality
    const paginationButtons = document.querySelectorAll('.pagination button:not(:first-child):not(:last-child)');
    paginationButtons.forEach(btn => {
        btn.addEventListener('click', function () {
            paginationButtons.forEach(b => b.classList.remove('active'));
            this.classList.add('active');
        });
    });

    // Banner add: enforce selecting an image before submit/click.
    const addBannerForm = document.getElementById('addBannerForm');
    if (addBannerForm) {
        const validate = function (e) {
            const input = addBannerForm.querySelector('input[type="file"][name="bannerImage"]');
            const err = document.getElementById('bannerImageError');

            const hasFile = !!(input && input.files && input.files.length > 0);
            if (!hasFile) {
                if (e) e.preventDefault();
                if (err) err.style.display = 'inline';
                // Keep modal open and do NOT auto-open file picker (user requested)
                if (input) input.focus();
                return false;
            }
            return true;
        };

        // Validate on submit
        addBannerForm.addEventListener('submit', function (e) {
            validate(e);
        });

        // Validate on clicking the submit button
        const submitBtn = addBannerForm.querySelector('button[type="submit"], input[type="submit"]');
        if (submitBtn) {
            submitBtn.addEventListener('click', function (e) {
                validate(e);
            });
        }

        // Hide inline error once user selects a file
        const fileInput = addBannerForm.querySelector('input[type="file"][name="bannerImage"]');
        if (fileInput) {
            fileInput.addEventListener('change', function () {
                const err = document.getElementById('bannerImageError');
                if (err) err.style.display = 'none';
            });
        }
    }
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
    const blob = new Blob(['\ufeff' + csvContent], {type: 'text/csv;charset=utf-8;'});
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
        window.location.href = 'login.jsp';
    }
}

function openEditCategory(id, name) {
    const idEl = document.getElementById('editCategoryId');
    const nameEl = document.getElementById('editCategoryName');
    if (!idEl || !nameEl) {
        console.warn('[admin.js] Edit category modal elements not found');
        return;
    }
    idEl.value = id;
    nameEl.value = name;
    openModal('editModal');
}

// Handle click on category edit buttons (works even when clicking the inner <i> icon)
document.addEventListener('click', function (e) {
    const btn = e.target.closest ? e.target.closest('.js-edit-category') : null;
    if (!btn) return;

    const id = btn.getAttribute('data-id');
    const name = btn.getAttribute('data-name') || '';

    if (!id) {
        console.warn('[admin.js] Missing data-id on .js-edit-category button');
        return;
    }

    // Prevent any default behavior
    e.preventDefault();
    openEditCategory(id, name);
});

// Banner: open edit modal when clicking edit buttons
document.addEventListener('click', function (e) {
    const btn = e.target.closest ? e.target.closest('.js-edit-banner') : null;
    if (!btn) return;

    const id = btn.getAttribute('data-id');
    const image = btn.getAttribute('data-image') || '';

    if (!id) {
        console.warn('[admin.js] Missing data-id on .js-edit-banner button');
        return;
    }

    e.preventDefault();
    openEditBanner(id, image);
});
