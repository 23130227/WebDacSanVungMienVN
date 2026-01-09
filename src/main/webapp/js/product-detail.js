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