package vn.edu.hcmuaf.fit.webdacsanvungmienvn.service;

import vn.edu.hcmuaf.fit.webdacsanvungmienvn.dao.ReviewDAO;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.RatingInfo;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Review;

import java.util.List;

public class ReviewService {
    private final ReviewDAO reviewDAO = new ReviewDAO();

    public List<Review> getReviewsByProductId(int productId, int limit, int page) {
        return reviewDAO.getReviewsByProductId(productId, limit, page);
    }

    public int countReviewsByProductId(int productId) {
        return reviewDAO.countReviewsByProductId(productId);
    }

    public void addReview(int productId, int userId, String content, String rating) {
        if (rating == null) {
            throw new IllegalArgumentException("Đánh giá không được để trống");
        }
        int ratingValue = Integer.parseInt(rating);
        if (ratingValue < 1 || ratingValue > 5) {
            throw new IllegalArgumentException("Đánh giá phải từ 1 đến 5 sao");
        }
        if (content == null || content.trim().isEmpty()) {
            throw new IllegalArgumentException("Đánh giá không được để trống");
        }
        if (content.length() > 1000) {
            throw new IllegalArgumentException("Đánh giá không được vượt quá 1000 ký tự");
        }
        if (hasUserReviewedProduct(userId, productId)) {
            throw new IllegalArgumentException("Người dùng đã đánh giá sản phẩm này");
        }
        Review review = new Review();
        review.setProductId(productId);
        review.setUserId(userId);
        review.setContent(content);
        review.setRating(ratingValue);
        reviewDAO.addReview(review);
    }

    public RatingInfo getRatingInfoByProductId(int productId) {
        double averageRating = reviewDAO.getAverageRatingByProductId(productId);
        return new RatingInfo(averageRating);
    }

    public boolean hasUserReviewedProduct(int userId, int productId) {
        return reviewDAO.hasUserReviewedProduct(userId, productId);
    }

    public int totalPages(int totalReviews, int reviewsPerPage) {
        return (int) Math.ceil((double) totalReviews / reviewsPerPage);
    }
}
