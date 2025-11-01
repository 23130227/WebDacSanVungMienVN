const buttons = document.querySelectorAll(".quy-cach-button");

buttons.forEach(button => {
    button.addEventListener("click", (e) => {
        buttons.forEach(b => {
            b.classList.remove("active");
        })
        button.classList.add("active");
    });
});

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