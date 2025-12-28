package vn.edu.hcmuaf.fit.webdacsanvungmienvn.dao;

import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Product;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Review;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.util.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ReviewDAO {
    public List<Review> getReviewsByProductId(int productId, int limit, int page) {
        List<Review> reviews = new ArrayList<>();
        String query = "SELECT r.*, u.full_name AS user_full_name FROM reviews r LEFT JOIN users u ON r.user_id = u.id " +
                "WHERE r.product_id = ? ORDER BY r.created_at DESC LIMIT ? OFFSET ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, productId);
            ps.setInt(2, limit);
            ps.setInt(3, (page - 1) * limit);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Review review = new Review();
                review.setId(rs.getInt("id"));
                review.setProductId(rs.getInt("product_id"));
                review.setUserId(rs.getInt("user_id"));
                review.setUserFullName(rs.getString("user_full_name"));
                review.setContent(rs.getString("content"));
                review.setRating(rs.getInt("rating"));
                review.setCreatedAt(rs.getTimestamp("created_at"));
                reviews.add(review);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return reviews;
    }

    public int countReviewsByProductId(int productId) {
        int count = 0;
        String query = "SELECT COUNT(*) AS total FROM reviews WHERE product_id = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt("total");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }

    public void addReview(Review review) {
        String query = "INSERT INTO reviews (product_id, user_id, content, rating) VALUES (?, ?, ?, ?)";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, review.getProductId());
            ps.setInt(2, review.getUserId());
            ps.setString(3, review.getContent());
            ps.setInt(4, review.getRating());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean hasUserReviewedProduct(int userId, int productId) {
        String query = "SELECT COUNT(*) AS total FROM reviews WHERE user_id = ? AND product_id = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, userId);
            ps.setInt(2, productId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt("total") > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public double getAverageRatingByProductId(int productId) {
        double average = 0.0;
        String query = "SELECT AVG(rating) AS average_rating FROM reviews WHERE product_id = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                average = rs.getDouble("average_rating");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return average;
    }
}