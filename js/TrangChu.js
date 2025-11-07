document.addEventListener("DOMContentLoaded", () => {
    const carousels = document.querySelectorAll(".section-product .container");

    carousels.forEach(container => {
        const productList = container.querySelector(".product-list");
        const dots = container.querySelectorAll(".carousel-dots .dot");

        if (!productList || dots.length === 0) return;

        const items = productList.querySelectorAll(".product");
        const totalItems = items.length;
        const itemsPerSlide = 5; // mỗi lần hiển thị 5 sản phẩm
        const totalSlides = Math.ceil(totalItems / itemsPerSlide);

        let index = 0;

        function updateCarousel() {
            dots.forEach(dot => dot.classList.remove("active"));
            if (dots[index]) dots[index].classList.add("active");

            const itemWidth = items[0].offsetWidth + 15;
            const scrollAmount = index * itemWidth * itemsPerSlide;

            productList.scrollTo({
                left: scrollAmount,
                behavior: "smooth"
            });
        }

        // click vào dot
        dots.forEach((dot, i) => {
            dot.addEventListener("click", () => {
                index = i;
                updateCarousel();
            });
        });

    });
});
