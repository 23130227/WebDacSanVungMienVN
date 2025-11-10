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