<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Chi tiết sản phẩm</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/product-detail.css">
    <script src="js/product-detail.js" defer></script>
</head>
<body>
<%@ include file="header.jsp" %>

<main>
    <section class="section-product-detail">
        <div class="container">
            <div class="product-wrapper">
                <img src="images/lacxuong.png"/>
                <div class="product-options">
                    <h2 class="product-name">Lạp xưởng</h2>
                    <div class="product-price">
                        <h3 class="new-price">70.000đ</h3>
                        <h3 class="old-price">100.000đ</h3>
                    </div>
                    <p>
                        <strong>Thương hiệu: </strong>Viet Special
                    </p>
                    <p>
                        <strong>Quy cách đóng gói: </strong>500g
                    </p>
                    <div class="quantity-selector">
                        <strong>Số lượng:</strong>
                        <div class="quantity-controls">
                            <button class="decrease-button">-</button>
                            <input type="text" class="quantity-input" value="1" readonly>
                            <button class="increase-button">+</button>
                        </div>
                    </div>
                    <button class="add-to-cart-button" type="submit">Thêm vào giỏ hàng</button>
                </div>
            </div>
        </div>
    </section>
    <section class="section-product-description">
        <div class="container">
            <div class="product-description">
                <h2 class="title">Mô tả sản phẩm</h2>
                <p>Lạp xưởng tươi truyền thống được làm từ thịt heo nạc vai chọn lọc, kết hợp cùng mỡ heo hảo hạng, rượu
                    mai
                    quế lộ và gia vị tự nhiên, mang đến hương vị đậm đà, thơm ngon đặc trưng. Từng cây lạp xưởng được
                    nhồi
                    thủ công, phơi sấy theo quy trình truyền thống giúp giữ trọn độ ngọt của thịt và mùi thơm hấp dẫn.
                    Khi
                    chế biến, lạp xưởng có màu đỏ hồng đẹp mắt, vị ngọt nhẹ, béo mà không ngấy.
                </p>
                <p class="description-image-panel">
                    <img class="description-image" src="images/lapxuong-chitiet-1.png"/>
                </p>
                <p>
                    Sản phẩm không sử dụng chất bảo quản hay phẩm màu độc hại, đảm bảo an toàn cho sức khỏe. Lạp xưởng
                    thích
                    hợp để chiên, nướng, hấp hoặc xào cùng cơm chiên, xôi, mì, bánh bao,… rất tiện lợi cho bữa ăn gia
                    đình
                    hoặc dùng làm món quà biếu Tết đầy ý nghĩa.
                </p>
            </div>
        </div>
    </section>

    <section class="section-product-review">
        <div class="container">
            <div class="review-wrapper">
                <h2 class="review-title">Đánh giá sản phẩm</h2>

                <div class="review-summary">
                    <div class="rating-overview">
                        <span class="average-rating">4.5</span>
                        <div class="stars-overview">
                            <span class="star filled">★</span>
                            <span class="star filled">★</span>
                            <span class="star filled">★</span>
                            <span class="star filled">★</span>
                            <span class="star half">★</span>
                        </div>
                        <span class="total-reviews">(12 đánh giá)</span>
                    </div>
                </div>

                <div class="review-form-wrapper">
                    <h3>Viết đánh giá của bạn</h3>
                    <form class="review-form">
                        <div class="rating-input">
                            <label>Đánh giá của bạn:</label>
                            <div class="star-rating">
                                <input type="radio" id="star5" name="rating" value="5">
                                <label for="star5" class="star-label">★</label>
                                <input type="radio" id="star4" name="rating" value="4">
                                <label for="star4" class="star-label">★</label>
                                <input type="radio" id="star3" name="rating" value="3">
                                <label for="star3" class="star-label">★</label>
                                <input type="radio" id="star2" name="rating" value="2">
                                <label for="star2" class="star-label">★</label>
                                <input type="radio" id="star1" name="rating" value="1">
                                <label for="star1" class="star-label">★</label>
                            </div>
                        </div>
                        <div class="content-input">
                            <label for="review-content">Nội dung đánh giá:</label>
                            <textarea id="review-content" name="content" rows="4"
                                      placeholder="Nhập đánh giá của bạn về sản phẩm..."></textarea>
                        </div>
                        <button type="submit" class="submit-review-btn">Gửi đánh giá</button>
                    </form>
                </div>

                <div class="review-list">
                    <h3>Tất cả đánh giá</h3>

                    <div class="review-item">
                        <div class="review-header">
                            <div class="reviewer-info">
                                <div class="reviewer-details">
                                    <span class="reviewer-name">Nguyễn Văn A</span>
                                    <span class="review-date">05/12/2025</span>
                                </div>
                            </div>
                            <div class="review-rating">
                                <span class="star filled">★</span>
                                <span class="star filled">★</span>
                                <span class="star filled">★</span>
                                <span class="star filled">★</span>
                                <span class="star filled">★</span>
                            </div>
                        </div>
                        <div class="review-content">
                            <p>Sản phẩm rất ngon, đóng gói cẩn thận. Lạp xưởng thơm, vị đậm đà, gia đình tôi rất thích.
                                Sẽ ủng hộ shop tiếp!</p>
                        </div>
                    </div>

                    <div class="review-item">
                        <div class="review-header">
                            <div class="reviewer-info">
                                <div class="reviewer-details">
                                    <span class="reviewer-name">Trần Thị B</span>
                                    <span class="review-date">03/12/2025</span>
                                </div>
                            </div>
                            <div class="review-rating">
                                <span class="star filled">★</span>
                                <span class="star filled">★</span>
                                <span class="star filled">★</span>
                                <span class="star filled">★</span>
                                <span class="star">★</span>
                            </div>
                        </div>
                        <div class="review-content">
                            <p>Chất lượng tốt, giao hàng nhanh. Lạp xưởng ăn ngon, chỉ có điều hơi mặn một chút với khẩu
                                vị của mình.</p>
                        </div>
                    </div>

                    <div class="review-item">
                        <div class="review-header">
                            <div class="reviewer-info">
                                <div class="reviewer-details">
                                    <span class="reviewer-name">Lê Văn C</span>
                                    <span class="review-date">01/12/2025</span>
                                </div>
                            </div>
                            <div class="review-rating">
                                <span class="star filled">★</span>
                                <span class="star filled">★</span>
                                <span class="star filled">★</span>
                                <span class="star filled">★</span>
                                <span class="star filled">★</span>
                            </div>
                        </div>
                        <div class="review-content">
                            <p>Mua làm quà Tết cho gia đình, ai cũng khen ngon. Đóng gói đẹp, hạn sử dụng còn dài. Rất
                                hài lòng!</p>
                        </div>
                    </div>
                </div>

                <div class="review-pagination">
                    <button class="pagination-btn active">1</button>
                    <button class="pagination-btn">2</button>
                    <button class="pagination-btn">3</button>
                    <button class="pagination-btn next">Tiếp &raquo;</button>
                </div>
            </div>
        </div>
    </section>
</main>

<%@ include file="footer.jsp" %>
</body>
</html>