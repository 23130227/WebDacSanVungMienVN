document.addEventListener("DOMContentLoaded", () => {
    // Lấy tất cả sản phẩm
    const cartItems = document.querySelectorAll(".cart-item");
    const totalPriceElement = document.getElementById("total-price");

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
});
