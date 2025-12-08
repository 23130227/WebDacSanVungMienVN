<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Khuyến mãi ưu đãi</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/promotions.css">
</head>
<body>
<header>
    <section class="section-top">
        <div class="container">
            <a class="text text-logo" href="index.jsp">DacSanVungMien</a>
            <form class="search-bar" method="get">
                <input class="search-input" type="text" placeholder="Tìm kiếm sản phẩm...">
                <button class="search-button" type="button" onclick="location.href='KetQuaTimKiem.html'">
                    <img src="images/search.png" height="24" width="24"/>
                </button>
            </form>
            <div class="group">
                <p class="text">
                    Hotline: 0921955395
                </p>
                <div class="sub-group">
                    <img src="images/user.png" height="24" width="24"/>
                    <a class="text" href="login.jsp">
                        Đăng nhập
                    </a>
                    <p class="text">/</p>
                    <a class="text" href="register.jsp">
                        Đăng ký
                    </a>
                </div>
                <a class="sub-group" href="shopping-cart.jsp">
                    <img src="images/grocery-store.png" height="24" width="24"/>
                    <p class="text">
                        Giỏ hàng
                    </p>
                    <span id="cart-count" class="badge">0</span>
                </a>
            </div>
        </div>
    </section>
    <section class="section-bottom">
        <div class="container">
            <nav>
                <a class="item" href="index.jsp">Trang chủ</a>
                <a class="item" href="about-us.jsp">Giới thiệu</a>
                <div class="item">
                    Danh mục sản phẩm
                    <div class="sub">
                        <a class="sub-item" href="category-products.jsp">Tất cả sản phẩm</a>
                        <a class="sub-item" href="category-products.jsp">Sản phẩm mới</a>
                        <a class="sub-item" href="category-products.jsp">Sản phẩm bán chạy</a>
                        <a class="sub-item" href="category-products.jsp">Đặc sản miền Bắc</a>
                        <a class="sub-item" href="category-products.jsp">Đặc sản miền Trung</a>
                        <a class="sub-item" href="category-products.jsp">Đặc sản miền Nam</a>
                        <a class="sub-item" href="category-products.jsp">Mứt</a>
                        <a class="sub-item" href="category-products.jsp">Trà</a>
                        <a class="sub-item" href="category-products.jsp">Bánh</a>
                        <a class="sub-item" href="category-products.jsp">Lạp xưởng</a>
                    </div>
                </div>
                <a class="item" href="KhuyenMaiUuDai.html">Khuyến mãi / ưu đãi</a>
                <a class="item" href="blog-news.jsp">Tin tức / blog</a>
            </nav>
        </div>
    </section>
</header>

<main>
    <section>
        <div class="container">
            <div class="nav-product-list">
                <div class="title-panel">
                    <img src="images/sale.png" height="32" width="32"/>
                    <h1 class="title">Khuyến mãi và ưu đãi</h1>
                    <img src="images/sale.png" height="32" width="32"/>
                </div>
                <div class="product-list">
                    <div class="product">
                        <div class="sale-tag">
                            <p class="sale-percent">-30%</p>
                        </div>
                        <a href="product-detail.jsp">
                            <img class="product-image" src="images/lacxuong.png"/>
                        </a>
                        <a class="product-name" href="product-detail.jsp">
                            <h3>Lạp xưởng</h3>
                        </a>
                        <div class="product-price">
                            <h4 class="new-price">70.000đ</h4>
                            <h4 class="old-price">100.000đ</h4>
                        </div>
                        <a class="buy" href="product-detail.jsp">Mua hàng</a>
                    </div>
                    <div class="product">
                        <div class="sale-tag">
                            <p class="sale-percent">-26%</p>
                        </div>
                        <a href="product-detail.jsp">
                            <img class="product-image" src="images/bakhiatron.png"/>
                        </a>
                        <a class="product-name" href="product-detail.jsp">
                            <h3>Ba khía trộn</h3>
                        </a>
                        <div class="product-price">
                            <h4 class="new-price">95.000đ</h4>
                            <h4 class="old-price">129.000đ</h4>
                        </div>
                        <a class="buy" href="product-detail.jsp">Mua hàng</a>
                    </div>
                    <div class="product">
                        <div class="sale-tag">
                            <p class="sale-percent">-18%</p>
                        </div>
                        <a href="product-detail.jsp">
                            <img class="product-image" src="images/banhdake.png"/>
                        </a>
                        <a class="product-name" href="product-detail.jsp">
                            <h3>Bánh đa kê</h3>
                        </a>
                        <div class="product-price">
                            <h4 class="new-price">28.000đ</h4>
                            <h4 class="old-price">34.000đ</h4>
                        </div>
                        <a class="buy" href="product-detail.jsp">Mua hàng</a>
                    </div>
                    <div class="product">
                        <div class="sale-tag">
                            <p class="sale-percent">-22%</p>
                        </div>
                        <a href="product-detail.jsp">
                            <img class="product-image" src="images/banhmen.png"/>
                        </a>
                        <a class="product-name" href="product-detail.jsp">
                            <h3>Bánh men</h3>
                        </a>
                        <div class="product-price">
                            <h4 class="new-price">14.000đ</h4>
                            <h4 class="old-price">18.000đ</h4>
                        </div>
                        <a class="buy" href="product-detail.jsp">Mua hàng</a>
                    </div>
                    <div class="product">
                        <div class="sale-tag">
                            <p class="sale-percent">-25%</p>
                        </div>
                        <a href="product-detail.jsp">
                            <img class="product-image" src="images/banhmexat.png"/>
                        </a>
                        <a class="product-name" href="product-detail.jsp">
                            <h3>Bánh mè xát</h3>
                        </a>
                        <div class="product-price">
                            <h4 class="new-price">15.000đ</h4>
                            <h4 class="old-price">20.000đ</h4>
                        </div>
                        <a class="buy" href="product-detail.jsp">Mua hàng</a>
                    </div>
                    <div class="product">
                        <div class="sale-tag">
                            <p class="sale-percent">-30%</p>
                        </div>
                        <a href="product-detail.jsp">
                            <img class="product-image" src="images/banhphongsua.png"/>
                        </a>
                        <a class="product-name" href="product-detail.jsp">
                            <h3>Bánh tráng sữa</h3>
                        </a>
                        <div class="product-price">
                            <h4 class="new-price">21.000đ</h4>
                            <h4 class="old-price">30.000đ</h4>
                        </div>
                        <a class="buy" href="product-detail.jsp">Mua hàng</a>
                    </div>
                    <div class="product">
                        <div class="sale-tag">
                            <p class="sale-percent">-20%</p>
                        </div>
                        <a href="product-detail.jsp">
                            <img class="product-image" src="images/banhphuthe.png"/>
                        </a>
                        <a class="product-name" href="product-detail.jsp">
                            <h3>Bánh phu thê</h3>
                        </a>
                        <div class="product-price">
                            <h4 class="new-price">24.000đ</h4>
                            <h4 class="old-price">30.000đ</h4>
                        </div>
                        <a class="buy" href="product-detail.jsp">Mua hàng</a>
                    </div>
                    <div class="product">
                        <div class="sale-tag">
                            <p class="sale-percent">-28%</p>
                        </div>
                        <a href="product-detail.jsp">
                            <img class="product-image" src="images/banhpia.png"/>
                        </a>
                        <a class="product-name" href="product-detail.jsp">
                            <h3>Bánh pía</h3>
                        </a>
                        <div class="product-price">
                            <h4 class="new-price">36.000đ</h4>
                            <h4 class="old-price">50.000đ</h4>
                        </div>
                        <a class="buy" href="product-detail.jsp">Mua hàng</a>
                    </div>
                    <div class="product">
                        <div class="sale-tag">
                            <p class="sale-percent">-24%</p>
                        </div>
                        <a href="product-detail.jsp">
                            <img class="product-image" src="images/comdep.png"/>
                        </a>
                        <a class="product-name" href="product-detail.jsp">
                            <h3>Cốm dẹp</h3>
                        </a>
                        <div class="product-price">
                            <h4 class="new-price">38.000đ</h4>
                            <h4 class="old-price">50.000đ</h4>
                        </div>
                        <a class="buy" href="product-detail.jsp">Mua hàng</a>
                    </div>
                    <div class="product">
                        <div class="sale-tag">
                            <p class="sale-percent">-27%</p>
                        </div>
                        <a href="product-detail.jsp">
                            <img class="product-image" src="images/duasap.png"/>
                        </a>
                        <a class="product-name" href="product-detail.jsp">
                            <h3>Dừa sáp</h3>
                        </a>
                        <div class="product-price">
                            <h4 class="new-price">73.000đ</h4>
                            <h4 class="old-price">100.000đ</h4>
                        </div>
                        <a class="buy" href="product-detail.jsp">Mua hàng</a>
                    </div>
                    <div class="product">
                        <div class="sale-tag">
                            <p class="sale-percent">-22%</p>
                        </div>
                        <a href="product-detail.jsp">
                            <img class="product-image" src="images/mamruocHue.png"/>
                        </a>
                        <a class="product-name" href="product-detail.jsp">
                            <h3>Mắm ruốc Huế</h3>
                        </a>
                        <div class="product-price">
                            <h4 class="new-price">66.000đ</h4>
                            <h4 class="old-price">85.000đ</h4>
                        </div>
                        <a class="buy" href="product-detail.jsp">Mua hàng</a>
                    </div>
                    <div class="product">
                        <div class="sale-tag">
                            <p class="sale-percent">-25%</p>
                        </div>
                        <a href="product-detail.jsp">
                            <img class="product-image" src="images/nemchuaThanhHoa.png"/>
                        </a>
                        <a class="product-name" href="product-detail.jsp">
                            <h3>Nem chua Thanh Hóa</h3>
                        </a>
                        <div class="product-price">
                            <h4 class="new-price">45.000đ</h4>
                            <h4 class="old-price">60.000đ</h4>
                        </div>
                        <a class="buy" href="product-detail.jsp">Mua hàng</a>
                    </div>
                    <div class="product">
                        <div class="sale-tag">
                            <p class="sale-percent">-22%</p>
                        </div>
                        <a href="product-detail.jsp">
                            <img class="product-image" src="images/trataxua.png"/>
                        </a>
                        <a class="product-name" href="product-detail.jsp">
                            <h3>Trà Tà Xùa</h3>
                        </a>
                        <div class="product-price">
                            <h4 class="new-price">78.000đ</h4>
                            <h4 class="old-price">100.000đ</h4>
                        </div>
                        <a class="buy" href="product-detail.jsp">Mua hàng</a>
                    </div>
                </div>
                <nav>
                    <button>Trang trước</button>
                    <button>1</button>
                    <button>2</button>
                    <button>3</button>
                    <button>Trang sau</button>
                </nav>
            </div>
        </div>
    </section>
</main>

<footer>
    <section class="section-top">
        <div class="container">
            <div class="info">
                <h3>Thông tin liên hệ</h3>
                <ul>
                    <li>Công ty TNHH DacSanVungMien</li>
                    <li>Địa chỉ: Trường Đại học Nông Lâm TP.HCM</li>
                    <li>Hotline: 0921955395</li>
                    <li>Email: 23130227@st.hcmuaf.edu.vn</li>
                    <li>Facebook: DacSanVungMien</li>
                    <li>Website: dacsanvungmien.com</li>
                </ul>
            </div>
            <div class="ho-tro-khach-hang">
                <h4>Hỗ trợ khách hàng</h4>
                <a href="faq.jsp">Câu hỏi thường gặp</a>
                <a href="order-payment-guide.jsp">Hướng dẫn đạt hàng và thanh toán</a>
                <a href="shipping-policy.jsp">Chính sách giao hàng</a>
                <a href="return-policy.jsp">Chính sách đổi trả</a>
            </div>
            <div class="social">
                <a href="">
                    <img src="images/facebook.png" height="64" width="64"/>
                </a>
                <a href="">
                    <img src="images/instagram.png" height="64" width="64"/>
                </a>
                <a href="">
                    <img src="images/tik-tok.png" height="64" width="64"/>
                </a>
            </div>
        </div>
    </section>
    <section class="section-bottom">
        <div class="container">
            <p>Copyright 2025 ©. Designed by Nhóm 13</p>
        </div>
    </section>
</footer>
</body>
</html>