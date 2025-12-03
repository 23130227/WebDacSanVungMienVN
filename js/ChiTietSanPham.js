const giamButton = document.querySelector(".decrease-button");
const tangButton = document.querySelector(".increase-button");
const soLuong = document.querySelector(".quantity-input");

giamButton.addEventListener("click", () => {
    let currentSoLuong = parseInt(soLuong.value);
    if (currentSoLuong > 1) {
        soLuong.value = currentSoLuong - 1;
    }
})

tangButton.addEventListener("click", () => {
    let currentSoLuong = parseInt(soLuong.value);
    soLuong.value = currentSoLuong + 1;
})

const themVaoGioHangBtn = document.querySelector(".add-to-cart-button");
themVaoGioHangBtn.addEventListener("click", () => {
    addToCart()
})

let count = 0;

function addToCart() {
    count++;
    const badge = document.getElementById('cart-count');
    badge.textContent = count;
    badge.style.display = "inline-block";
}
