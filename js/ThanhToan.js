document.addEventListener("DOMContentLoaded", function () {
    const voucherSelect = document.getElementById("voucher-select");
    const removeBtn = document.getElementById("remove-voucher");
    const message = document.getElementById("voucher-message");

    voucherSelect.addEventListener("change", function () {
        if (voucherSelect.value === "A") {
            message.textContent = "Phiếu A - Giảm 10%";
        } else if (voucherSelect.value === "B") {
            message.textContent = "Phiếu B - Giảm 20%";
        } else if (voucherSelect.value === "C") {
            message.textContent = "Phiếu C - Giảm 50%";
        } else {
            message.textContent = "";
        }
    });

    removeBtn.addEventListener("click", function () {
        voucherSelect.value = ""; // xóa chọn
        message.textContent = ""; // xóa thông báo
    });
});
