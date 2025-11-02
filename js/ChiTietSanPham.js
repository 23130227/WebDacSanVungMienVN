document.addEventListener("DOMContentLoaded", function() {
    // Lấy tất cả sản phẩm trong giỏ hàng
    const cartItems = document.querySelectorAll(".cart-item");

    cartItems.forEach(item => {
        const minusBtn = item.querySelector(".giam-button");
        const plusBtn = item.querySelector(".tang-button");
        const quantityInput = item.querySelector(".so-luong");
        const priceText = item.querySelector(".price").textContent.replace("đ", "").replace(/\./g, "");

        // Khi nhấn nút giảm
        minusBtn.addEventListener("click", () => {
            let currentValue = parseInt(quantityInput.value);
            if (currentValue > 1) {
                quantityInput.value = currentValue - 1;
                updateTotal();
            }
        });

        // Khi nhấn nút tăng
        plusBtn.addEventListener("click", () => {
            let currentValue = parseInt(quantityInput.value);
            quantityInput.value = currentValue + 1;
            updateTotal();
        });
    });

    // Hàm cập nhật tổng cộng
    function updateTotal() {
        let total = 0;
        cartItems.forEach(item => {
            const price = parseInt(item.querySelector(".price").textContent.replace("đ", "").replace(/\./g, ""));
            const qty = parseInt(item.querySelector(".so-luong").value);
            total += price * qty;
        });

        // Hiển thị tổng cộng (thêm dấu chấm ngăn cách nghìn)
        const totalText = total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
        document.getElementById("total-price").textContent = totalText + "đ";
    }

    // Gọi 1 lần khi trang mới mở
    updateTotal();
});