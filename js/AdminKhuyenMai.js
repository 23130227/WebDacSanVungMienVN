const radios = document.querySelectorAll('.radio-group input');
const khuyenMaiSanPham = document.querySelector('.khuyen-mai-san-pham');
const khuyenMaiDanhMuc = document.querySelector('.khuyen-mai-danh-muc');

function toggleForms() {
    const selected = document.querySelector('.radio-group input:checked').value;

    if (selected === "san-pham") {
        khuyenMaiSanPham.style.display = "";
        khuyenMaiDanhMuc.style.display = "none";
    } else {
        khuyenMaiSanPham.style.display = "none";
        khuyenMaiDanhMuc.style.display = "";
    }
}

radios.forEach(radio => radio.addEventListener("change", toggleForms));

toggleForms();