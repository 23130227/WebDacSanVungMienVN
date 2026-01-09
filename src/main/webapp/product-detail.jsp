<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Chi tiết sản phẩm</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/product-detail.css">
    <script src="js/product-detail.js" defer></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
<%@ include file="header.jsp" %>

<main>
    <section class="section-product-detail">
        <div class="container">
            <div class="product-wrapper">
                <img src="${product.image}"/>
                <div class="product-options">
                    <h2 class="product-name">${product.name}</h2>
                    <div class="product-price">
                        <h4 class="new-price">
                            ${product.format(product.discountPercentage > 0 ? product.discountPrice : product.price)}đ
                        </h4>
                        <c:if test="${product.discountPercentage > 0}">
                            <h4 class="old-price">
                                    ${product.format(product.price)}đ
                            </h4>
                        </c:if>
                    </div>
                    <p>
                        <strong>Thương hiệu: </strong>${product.brandName}
                    </p>
                    <p>
                        <strong>Quy cách đóng gói: </strong>${product.specification}
                    </p>
                    <form action="add-cart" method="get">
                        <input type="hidden" name="productId" value="${product.id}"/>

                        <div class="quantity-selector">
                            <strong>Số lượng:</strong>
                            <div class="quantity-controls">
                                <button type="button" class="decrease-button">-</button>
                                <input type="text" class="quantity-input" name="quantity" value="1" readonly>
                                <button type="button" class="increase-button">+</button>
                            </div>
                        </div>
                        <button class="add-to-cart-button" type="submit">Thêm vào giỏ hàng</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <section class="section-product-description">
        <div class="container">
            <div class="product-description">
                <h2 class="title">Mô tả sản phẩm</h2>
                <p>${product.description}
                </p>
                <%--                <p class="description-image-panel">--%>
                <%--                    <img class="description-image" src="images/lapxuong-chitiet-1.png"/>--%>
                <%--                </p>--%>
            </div>
        </div>
    </section>

    <section class="section-product-review">
        <div class="container">
            <div class="review-wrapper">
                <h2 class="review-title">Đánh giá sản phẩm</h2>

                <div class="review-summary">
                    <div class="rating-overview">
                        <span class="average-rating">${ratingInfo.averageRating}</span>
                        <div class="stars-overview">
                            <c:forEach begin="1" end="${ratingInfo.fullStars}">
                                <i class="fa-solid fa-star"></i>
                            </c:forEach>
                            <c:if test="${ratingInfo.halfStar}">
                                <i class="fa-solid fa-star-half-stroke"></i>
                            </c:if>
                            <c:forEach begin="${ratingInfo.fullStars + (ratingInfo.halfStar ? 1 : 0) + 1}" end="5">
                                <i class="fa-regular fa-star"></i>
                            </c:forEach>
                        </div>
                        <span class="total-reviews">(${totalReviews} đánh giá)</span>
                    </div>
                </div>

                <div class="review-form-wrapper">
                    <h3>Viết đánh giá của bạn</h3>
                    <form class="review-form" action="product-detail" method="post">
                        <input type="hidden" name="productId" value="${product.id}">
                        <div class="rating-input">
                            <label>Đánh giá của bạn:</label>
                            <div class="star-rating">
                                <input type="radio" id="star5" name="rating" value="5" required>
                                <label for="star5" class="star-label"><i class="fa-solid fa-star"></i></label>
                                <input type="radio" id="star4" name="rating" value="4">
                                <label for="star4" class="star-label"><i class="fa-solid fa-star"></i></label>
                                <input type="radio" id="star3" name="rating" value="3">
                                <label for="star3" class="star-label"><i class="fa-solid fa-star"></i></label>
                                <input type="radio" id="star2" name="rating" value="2">
                                <label for="star2" class="star-label"><i class="fa-solid fa-star"></i></label>
                                <input type="radio" id="star1" name="rating" value="1">
                                <label for="star1" class="star-label"><i class="fa-solid fa-star"></i></label>
                            </div>
                        </div>
                        <div class="content-input">
                            <label for="review-content">Nội dung đánh giá:</label>
                            <textarea id="review-content" name="content" rows="4"
                                      placeholder="Nhập đánh giá của bạn về sản phẩm..." required></textarea>
                        </div>
                        <c:if test="${not empty error}">
                            <p style="color:red">${error}</p>
                        </c:if>
                        <button type="submit" class="submit-review-btn">Gửi đánh giá</button>
                    </form>
                </div>

                <div class="review-list">
                    <h3>Tất cả đánh giá</h3>

                    <c:forEach items="${reviews}" var="r">
                        <div class="review-item">
                            <div class="review-header">
                                <div class="reviewer-info">
                                    <div class="reviewer-details">
                                        <span class="reviewer-name">${r.userFullName}</span>
                                        <span class="review-date">${r.createdAt}</span>
                                    </div>
                                </div>
                                <div class="review-rating">
                                    <c:forEach begin="1" end="${r.rating}">
                                        <i class="fa-solid fa-star"></i>
                                    </c:forEach>
                                    <c:forEach begin="${r.rating + 1}" end="5">
                                        <i class="fa-regular fa-star"></i>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="review-content">
                                <p>${r.content}</p>
                            </div>
                        </div>
                    </c:forEach>
                </div>

                <nav>
                    <c:choose>
                        <c:when test="${totalPages == 0}">
                            <h3>Chưa có đánh giá nào!</h3>
                        </c:when>
                        <c:otherwise>
                            <c:choose>
                                <c:when test="${page > 1}">
                                    <a href="product-detail?id=${product.id}&page=${page - 1}">
                                        Trang trước
                                    </a>
                                </c:when>
                                <c:otherwise>
                                    <a class="disabled">Trang trước</a>
                                </c:otherwise>
                            </c:choose>
                            <c:forEach var="i" begin="1" end="${totalPages}">
                                <a href="product-detail?id=${product.id}&page=${i}"
                                   class="${i == page? 'active':''}">${i}</a>
                            </c:forEach>
                            <c:choose>
                                <c:when test="${page < totalPages}">
                                    <a href="product-detail?id=${product.id}&page=${page + 1}">
                                        Trang sau
                                    </a>
                                </c:when>
                                <c:otherwise>
                                    <a class="disabled">Trang sau</a>
                                </c:otherwise>
                            </c:choose>
                        </c:otherwise>
                    </c:choose>
                </nav>
            </div>
        </div>
    </section>
</main>

<%@ include file="footer.jsp" %>
</body>
</html>