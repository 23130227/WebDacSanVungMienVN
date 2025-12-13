<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sản phẩm theo danh mục</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/category-products.css">
    <script src="js/category-products.js" defer></script>
</head>
<body>
<%@ include file="header.jsp" %>

<main>
    <section class="section-category">
        <div class="container">
            <h2>Danh mục sản phẩm</h2>
            <div class="category-product">
                <div class="category-list">
                    <button class="category-button active">Tất cả sản phẩm</button>
                    <button class="category-button">Sản phẩm mới</button>
                    <button class="category-button">Sản phẩm bán chạy</button>
                    <button class="category-button">Đặc sản miền Bắc</button>
                    <button class="category-button">Đặc sản miền Trung</button>
                    <button class="category-button">Đặc sản miền Nam</button>
                    <button class="category-button">Mứt</button>
                    <button class="category-button">Trà</button>
                    <button class="category-button">Bánh</button>
                    <button class="category-button">Lạp xưởng</button>
                </div>
                <div class="nav-product-list">
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
                    <nav>
                        <button>Trang trước</button>
                        <button>1</button>
                        <button>2</button>
                        <button>3</button>
                        <button>Trang sau</button>
                    </nav>
                </div>
            </div>
        </div>
    </section>
</main>

<%@ include file="footer.jsp" %>
</body>
</html>