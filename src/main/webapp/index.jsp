<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Trang chủ</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/index.css">
    <script src="js/index.js" defer></script>
</head>
<body>
<header>
    <section class="section-top">
        <div class="container">
            <a class="text text-logo" href="TrangChu.html">DacSanVungMien</a>
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
                <a class="item" href="TrangChu.html">Trang chủ</a>
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
                <a class="item" href="promotions.jsp">Khuyến mãi / ưu đãi</a>
                <a class="item" href="blog-news.jsp">Tin tức / blog</a>
            </nav>
        </div>
    </section>
</header>

<main>
    <section class="section-banner">
        <div class="container">
            <div class="slider">
                <div class="slides">
                    <div class="slide"><img src="images/banner1.png"/></div>
                    <div class="slide"><img src="images/banner2.png"/></div>
                    <div class="slide"><img src="images/banner3.png"/></div>
                </div>
                <button class="arrow prev" type="button" aria-label="Prev">&#10094;</button>
                <button class="arrow next" type="button" aria-label="Next">&#10095;</button>
                <div class="dots" id="dots">
                    <button type="button" class="dot active" data-index="0" aria-label="Slide 1"></button>
                    <button type="button" class="dot" data-index="1" aria-label="Slide 2"></button>
                    <button type="button" class="dot" data-index="2" aria-label="Slide 3"></button>
                </div>
            </div>
        </div>
    </section>
    <section class="section-product">
        <div class="container">
            <img class="label-image" src="images/sale-tag.png"/>
            <h1 class="title">Khuyến mãi</h1>
            <div class="slider">
                <div class="product-list slides">
                    <% List<Product> promotionProducts = (List<Product>) request.getAttribute("promotionProducts");
                        if (promotionProducts != null && !promotionProducts.isEmpty()) {
                            for (Product p : promotionProducts) { %>
                    <div class="product">
                        <div class="sale-tag">
                            <p class="sale-percent">-<%= p.getDiscountPercentage()%>%</p>
                        </div>
                        <a href="product-detail.jsp">
                            <img class="product-image" src="<%= p.getImage()%>"/>
                        </a>
                        <a class="product-name" href="product-detail.jsp">
                            <h3><%= p.getName()%>
                            </h3>
                        </a>
                        <div class="product-price">
                            <h4 class="new-price"><%= p.getFormattedPrice(p.getDiscountPrice())%>đ</h4>
                            <h4 class="old-price"><%= p.getFormattedPrice(p.getPrice())%>đ</h4>
                        </div>
                        <a class="buy" href="product-detail.jsp">Mua hàng</a>
                    </div>
                    <% }
                    } else { %>
                    <p>Không có sản phẩm khuyến mãi nào.</p>
                    <% } %>
                </div>
                <button class="arrow prev" type="button" aria-label="Prev">&#10094;</button>
                <button class="arrow next" type="button" aria-label="Next">&#10095;</button>
            </div>
            <a class="show-all" href="promotions.jsp">
                <h4>Xem tất cả →</h4>
            </a>
        </div>
    </section>
    <section class="section-product">
        <div class="container">
            <img class="label-image" src="images/new.png"/>
            <h1 class="title">Sản phẩm mới</h1>
            <div class="slider">
                <div class="product-list slides">
                    <div class="product">
                        <div class="sale-tag">
                            <p class="sale-percent"></p>
                        </div>
                        <a href="product-detail.jsp">
                            <img class="product-image" src="images/keodua.png"/>
                        </a>
                        <a class="product-name" href="product-detail.jsp">
                            <h3>Kẹo dừa</h3>
                        </a>
                        <div class="product-price">
                            <h4 class="new-price">50.000đ</h4>
                            <h4 class="old-price"></h4>
                        </div>
                        <a class="buy" href="product-detail.jsp">Mua hàng</a>
                    </div>
                    <div class="product">
                        <div class="sale-tag">
                            <p class="sale-percent"></p>
                        </div>
                        <a href="product-detail.jsp">
                            <img class="product-image" src="images/mamChauDoc.png"/>
                        </a>
                        <a class="product-name" href="product-detail.jsp">
                            <h3>Mắm Châu Đốc</h3>
                        </a>
                        <div class="product-price">
                            <h4 class="new-price">100.000đ</h4>
                            <h4 class="old-price"></h4>
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
                            <p class="sale-percent"></p>
                        </div>
                        <a href="product-detail.jsp">
                            <img class="product-image" src="images/muoitayninh.png"/>
                        </a>
                        <a class="product-name" href="product-detail.jsp">
                            <h3>Muối Tây Ninh</h3>
                        </a>
                        <div class="product-price">
                            <h4 class="new-price">66.000đ</h4>
                            <h4 class="old-price"></h4>
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
                            <p class="sale-percent"></p>
                        </div>
                        <a href="product-detail.jsp">
                            <img class="product-image" src="images/nuocmamPhuQuoc.png"/>
                        </a>
                        <a class="product-name" href="product-detail.jsp">
                            <h3>Nước mắm Phú Quốc</h3>
                        </a>
                        <div class="product-price">
                            <h4 class="new-price">120.000đ</h4>
                            <h4 class="old-price"></h4>
                        </div>
                        <a class="buy" href="product-detail.jsp">Mua hàng</a>
                    </div>
                </div>
                <button class="arrow prev" type="button" aria-label="Prev">&#10094;</button>
                <button class="arrow next" type="button" aria-label="Next">&#10095;</button>
            </div>
            <a class="show-all" href="category-products.jsp">
                <h4>Xem tất cả →</h4>
            </a>
        </div>
    </section>
    <section class="section-product">
        <div class="container">
            <img class="label-image" src="images/best-seller.png"/>
            <h1 class="title">Sản phẩm bán chạy</h1>
            <div class="slider">
                <div class="product-list slides">
                    <div class="product">
                        <div class="sale-tag">
                            <p class="sale-percent"></p>
                        </div>
                        <a href="product-detail.jsp">
                            <img class="product-image" src="images/nuoctuongNamDan.png"/>
                        </a>
                        <a class="product-name" href="product-detail.jsp">
                            <h3>Nước tương Nam Đàn</h3>
                        </a>
                        <div class="product-price">
                            <h4 class="new-price">60.000đ</h4>
                            <h4 class="old-price"></h4>
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
                    <div class="product">
                        <div class="sale-tag">
                            <p class="sale-percent"></p>
                        </div>
                        <a href="product-detail.jsp">
                            <img class="product-image" src="images/traugacbep.png"/>
                        </a>
                        <a class="product-name" href="product-detail.jsp">
                            <h3>Trâu gác bếp</h3>
                        </a>
                        <div class="product-price">
                            <h4 class="new-price">200.000đ</h4>
                            <h4 class="old-price"></h4>
                        </div>
                        <a class="buy" href="product-detail.jsp">Mua hàng</a>
                    </div>
                    <div class="product">
                        <div class="sale-tag">
                            <p class="sale-percent"></p>
                        </div>
                        <a href="product-detail.jsp">
                            <img class="product-image" src="images/trerom.png"/>
                        </a>
                        <a class="product-name" href="product-detail.jsp">
                            <h3>Tré rơm</h3>
                        </a>
                        <div class="product-price">
                            <h4 class="new-price">50.000đ</h4>
                            <h4 class="old-price"></h4>
                        </div>
                        <a class="buy" href="product-detail.jsp">Mua hàng</a>
                    </div>
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
                </div>
                <button class="arrow prev" type="button" aria-label="Prev">&#10094;</button>
                <button class="arrow next" type="button" aria-label="Next">&#10095;</button>
            </div>
            <a class="show-all" href="category-products.jsp">
                <h4>Xem tất cả →</h4>
            </a>
        </div>
    </section>
    <section class="section-dac-san-ba-mien">
        <div class="container">
            <h1 class="title">Đặc sản ba miền</h1>
            <div class="dac-san-ba-mien">
                <a class="dac-san-mien" href="category-products.jsp">
                    <div class="overlay"></div>
                    <h2 class="dac-san-mien-text">Đặc sản miền Bắc</h2>
                    <img src="images/ho-hoan-kiem-2.jpg"/>
                </a>
                <a class="dac-san-mien" href="category-products.jsp">
                    <div class="overlay"></div>
                    <h2 class="dac-san-mien-text">Đặc sản miền Trung</h2>
                    <img src="images/mien-trung.jpg">
                </a>
                <a class="dac-san-mien" href="category-products.jsp">
                    <div class="overlay"></div>
                    <h2 class="dac-san-mien-text">Đặc sản miền Nam</h2>
                    <img src="images/Du-lich-mien-Nam-thang-1-2.jpg"/>
                </a>
            </div>
        </div>
    </section>
    <section class="section-news">
        <div class="container">
            <h1>Tin tức / blog</h1>
            <div class="news-list">
                <div class="news">
                    <a href="blog-news-detail.jsp">
                        <img class="news-image" src="images/blog_1.png"/>
                    </a>
                    <div class="news-text">
                        <a class="news-title" href="blog-news-detail.jsp">
                            <h3>Mùa hoa súng ở Ninh Bình 2025 hút hồn du khách</h3>
                        </a>
                        <p class="news-caption">Mùa hoa súng Ninh Bình đang là tâm điểm của giới mê xê dịch thời điểm
                            cuối
                            thu đầu đông 2025.
                            Cánh đồn...</p>
                    </div>
                </div>
                <div class="news">
                    <a href="blog-news-detail.jsp">
                        <img class="news-image" src="images/blog_2.png"/>
                    </a>
                    <div class="news-text">
                        <a class="news-title" href="blog-news-detail.jsp">
                            <h3>Cách làm thịt xá xíu tại nhà: công thức đơn giản, mềm mọng, đậm đà</h3>
                        </a>
                        <p class="news-caption">Thịt xá xíu là một món ăn được yêu thích bởi lớp vỏ ngoài bóng bẩy, đậm
                            đà
                            cùng phần thịt bên
                            trong mềm mọn...</p>
                    </div>
                </div>
                <div class="news">
                    <a href="blog-news-detail.jsp">
                        <img class="news-image" src="images/blog_3.png"/>
                    </a>
                    <div class="news-text">
                        <a class="news-title" href="blog-news-detail.jsp">
                            <h3>Cách làm thịt xiên nướng mềm mọng, thơm nức tại nhà</h3>
                        </a>
                        <p class="news-caption">Thịt xiên nướng thơm mùi sả, vị đậm đà mặn ngọt, mềm mọng tan chảy,
                            chấm
                            thêm chút tương ớt cay
                            cay. Đ...</p>
                    </div>
                </div>
                <div class="news">
                    <a href="blog-news-detail.jsp">
                        <img class="news-image" src="images/blog_4.png"/>
                    </a>
                    <div class="news-text">
                        <a class="news-title" href="blog-news-detail.jsp">
                            <h3>5 công thức soda vừa ngon vừa đẹp mắt, uống là mê</h3>
                        </a>
                        <p class="news-caption">Công thức soda tạo nên thức uống có màu sắc bắt mắt và hương vị hấp
                            dẫn.
                            Hãy tham khảo những
                            hướng dẫn tron...</p>
                    </div>
                </div>
            </div>
            <a class="show-all" href="blog-news.jsp">
                <h4>Xem tất cả →</h4>
            </a>
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