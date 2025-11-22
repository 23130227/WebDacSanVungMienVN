const giamButton = document.querySelector(".giam-button");
const tangButton = document.querySelector(".tang-button");
const soLuong = document.querySelector(".so-luong");

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

const themVaoGioHangBtn = document.querySelector(".them-vao-gio-hang");
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
