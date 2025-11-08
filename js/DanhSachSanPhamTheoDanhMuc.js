const buttons = document.querySelectorAll(".category-button");

buttons.forEach(button => {
    button.addEventListener("click", (e) => {
        buttons.forEach(b => {
            b.classList.remove("active");
        })
        button.classList.add("active");
    });
});