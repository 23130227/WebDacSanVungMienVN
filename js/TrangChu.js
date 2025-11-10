const slides = document.querySelector('.section-banner .slides');
const slideArr = Array.from(slides.children);
const prevBtn = document.querySelector('.section-banner .prev');
const nextBtn = document.querySelector('.section-banner .next');
const dots = document.querySelector('.section-banner .dots');
const dotArr = Array.from(dots.children);
const sliderBanner = document.querySelector('.section-banner .slider');

const INTERVAL_MS = 5000;
let timer = 0;
let index = 0;

prevBtn.addEventListener('click', (e) => {
    prevSlide();
});

nextBtn.addEventListener('click', (e) => {
    nextSlide();
});

dotArr.forEach((dot, i) => {
    dot.addEventListener('click', (e) => {
        index = i;
        slides.style.transform = `translateX(-${index * 100}%)`;
        updateDots()
    })
});

function prevSlide() {
    index--;
    if (index < 0) {
        index = slideArr.length - 1;
    }
    slides.style.transform = `translateX(-${index * 100}%)`;
    updateDots();
}

function nextSlide() {
    index++;
    if (index === slideArr.length) {
        index = 0;
    }
    slides.style.transform = `translateX(-${index * 100}%)`;
    updateDots();
}

function updateDots() {
    dotArr.forEach((dot, i) => {
        if (i === index) {
            dot.classList.add('active');
        } else dot.classList.remove('active');
    });
}

function startAuto() {
    stopAuto(); // đảm bảo không có timer cũ
    timer = setInterval(nextSlide, INTERVAL_MS);
}

function stopAuto() {
    if (timer !== null) {
        clearInterval(timer);
        timer = null;
    }
}

sliderBanner.addEventListener('mouseleave', startAuto);
sliderBanner.addEventListener('mouseenter', stopAuto);

const sliderProducts = document.querySelectorAll('.section-product .slider');

sliderProducts.forEach((sliderProduct) => {
    const slidesProduct = sliderProduct.querySelector('.slides');
    const slideProductArr = Array.from(slidesProduct.children);
    const prevProductBtn = sliderProduct.querySelector('.prev');
    const nextProductBtn = sliderProduct.querySelector('.next');

    let index = 0;
    const numProducts = slideProductArr.length;

    prevProductBtn.addEventListener('click', (e) => {
        if (index > 0 && index < 5) {
            index = 0;
        } else {
            index -= 5;
            if (index < 0) {
                index = numProducts - 5;
            }
        }
        slidesProduct.style.transform = `translateX(-${index * 235}px)`;
    });

    nextProductBtn.addEventListener('click', (e) => {
        index += 5;
        if (index === numProducts) {
            index = 0;
        }
        if (numProducts - index < 5) {
            index = numProducts - 5;
        }
        slidesProduct.style.transform = `translateX(-${index * 235}px)`;
    });
});