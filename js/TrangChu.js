document.addEventListener("DOMContentLoaded", () => {
    const carousels = document.querySelectorAll(".sectionItem .container");

    carousels.forEach(container => {
        const itemList = container.querySelector(".itemList");
        const dots = container.querySelectorAll(".carousel-dots .dot");

        if (!itemList || dots.length === 0) return;

        const items = itemList.querySelectorAll(".item");
        const totalItems = items.length;
        const itemsPerSlide = 5; // mỗi lần hiển thị 5 sản phẩm
        const totalSlides = Math.ceil(totalItems / itemsPerSlide);

        let index = 0;

        function updateCarousel() {
            dots.forEach(dot => dot.classList.remove("active"));
            if (dots[index]) dots[index].classList.add("active");

            const itemWidth = items[0].offsetWidth + 15;
            const scrollAmount = index * itemWidth * itemsPerSlide;

            itemList.scrollTo({
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
