document.addEventListener("DOMContentLoaded", () => {
    // Lấy tất cả sản phẩm
    const cartItems = document.querySelectorAll(".cart-item");
    const totalPriceElement = document.getElementById("total-price");

    // Gán sự kiện tăng/giảm cho từng sản phẩm
    cartItems.forEach(item => {
        const minusBtn = item.querySelector(".decrease-button");
        const plusBtn = item.querySelector(".increase-button");
        const quantityInput = item.querySelector(".quantity-input");

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
