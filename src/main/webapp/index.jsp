<%@ taglib prefix="c" uri="jakarta.tags.core" %>
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
<%@ include file="header.jsp" %>

<main>
    <section class="section-banner">
        <div class="container">
            <div class="slider">
                <div class="slides">
                    <c:forEach items="${banners}" var="b">
                        <div class="slide">
                            <img src="${b.image}"/>
                        </div>
                    </c:forEach>
                </div>
                <button class="arrow prev" type="button" aria-label="Prev">&#10094;</button>
                <button class="arrow next" type="button" aria-label="Next">&#10095;</button>
                <div class="dots" id="dots">
                    <c:forEach items="${banners}" var="b" varStatus="status">
                        <button
                                type="button"
                                class="dot ${status.first ? 'active' : ''}"
                                data-index="${status.index}"
                                aria-label="Slide ${status.index + 1}">
                        </button>
                    </c:forEach>
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
                    <c:forEach items="${topDiscountProducts}" var="tdp">
                        <div class="product">
                            <div class="sale-tag">
                                <p class="sale-percent">-${tdp.getDiscountPercentage()}%</p>
                            </div>
                            <a href="product-detail.jsp">
                                <img class="product-image" src="${tdp.getImage()}"/>
                            </a>
                            <a class="product-name" href="product-detail.jsp">
                                <h3>${tdp.getName()}</h3>
                            </a>
                            <div class="product-price">
                                <h4 class="new-price">${tdp.format(tdp.getDiscountPrice())}đ</h4>
                                <h4 class="old-price">${tdp.format(tdp.getPrice())}đ</h4>
                            </div>
                            <a class="buy" href="product-detail.jsp">Mua hàng</a>
                        </div>
                    </c:forEach>
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
                    <c:forEach items="${topNewProducts}" var="tnp">
                        <div class="product">
                            <div class="sale-tag">
                                <c:if test="${tnp.getDiscountPercentage() > 0}">
                                    <p class="sale-percent">-${tnp.getDiscountPercentage()}%</p>
                                </c:if>
                            </div>
                            <a href="product-detail.jsp">
                                <img class="product-image" src="${tnp.getImage()}"/>
                            </a>
                            <a class="product-name" href="product-detail.jsp">
                                <h3>${tnp.getName()}</h3>
                            </a>
                            <div class="product-price">
                                <h4 class="new-price">
                                        ${tnp.format(tnp.discountPercentage > 0 ? tnp.discountPrice : tnp.price)}đ
                                </h4>
                                <c:if test="${tnp.discountPercentage > 0}">
                                    <h4 class="old-price">
                                            ${tnp.format(tnp.price)}đ
                                    </h4>
                                </c:if>
                            </div>
                            <a class="buy" href="product-detail.jsp">Mua hàng</a>
                        </div>
                    </c:forEach>
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
                    <c:forEach items="${topSoldProducts}" var="tsp">
                        <div class="product">
                            <div class="sale-tag">
                                <c:if test="${tsp.getDiscountPercentage() > 0}">
                                    <p class="sale-percent">-${tsp.getDiscountPercentage()}%</p>
                                </c:if>
                            </div>
                            <a href="product-detail.jsp">
                                <img class="product-image" src="${tsp.getImage()}"/>
                            </a>
                            <a class="product-name" href="product-detail.jsp">
                                <h3>${tsp.getName()}</h3>
                            </a>
                            <div class="product-price">
                                <h4 class="new-price">
                                        ${tsp.format(tsp.discountPercentage > 0 ? tsp.discountPrice : tsp.price)}đ
                                </h4>
                                <c:if test="${tsp.discountPercentage > 0}">
                                    <h4 class="old-price">
                                            ${tsp.format(tsp.price)}đ
                                    </h4>
                                </c:if>
                            </div>
                            <a class="buy" href="product-detail.jsp">Mua hàng</a>
                        </div>
                    </c:forEach>
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

<%@ include file="footer.jsp" %>
</body>
</html>