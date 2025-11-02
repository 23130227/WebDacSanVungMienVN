document.addEventListener("DOMContentLoaded", () => {
    // Lấy tất cả sản phẩm
    const cartItems = document.querySelectorAll(".cart-item");
    const totalPriceElement = document.getElementById("total-price");

    // Hàm tính tổng
    function updateTotal() {
        let total = 0;
        cartItems.forEach(item => {
            const priceText = item.querySelector(".price").textContent;
            const quantity = parseInt(item.querySelector(".so-luong").value);
            const price = parseInt(priceText.replace(/[^\d]/g, "")); // bỏ ký tự 'đ' và '.'
            total += price * quantity;
        });
        totalPriceElement.textContent = total.toLocaleString("vi-VN") + "đ";
    }

    // Gán sự kiện tăng/giảm cho từng sản phẩm
    cartItems.forEach(item => {
        const minusBtn = item.querySelector(".giam-button");
        const plusBtn = item.querySelector(".tang-button");
        const quantityInput = item.querySelector(".so-luong");

        minusBtn.addEventListener("click", () => {
            let current = parseInt(quantityInput.value);
            if (current > 1) {
                quantityInput.value = current - 1;
                updateTotal();
            }
        });

        plusBtn.addEventListener("click", () => {
            let current = parseInt(quantityInput.value);
            quantityInput.value = current + 1;
            updateTotal();
        });
    });

    // Tính tổng lúc mới tải trang
    updateTotal();
});
