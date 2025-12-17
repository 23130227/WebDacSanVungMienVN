package vn.edu.hcmuaf.fit.webdacsanvungmienvn.dao;

import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Product;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.util.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    public List<Product> getTopDiscountProducts(int limit) {
        List<Product> topDiscountProducts = new ArrayList<>();
        String query = "SELECT p.id, p.name, p.price, p.image, " +
                "COALESCE(pd.discount_percentage, cd.discount_percentage, 0) AS discount_percentage, " +
                "p.price * (1 - COALESCE(pd.discount_percentage, cd.discount_percentage, 0)/100) AS discount_price " +
                "FROM products p LEFT JOIN product_discounts pd ON p.id = pd.product_id " +
                "AND NOW() BETWEEN pd.start_date AND pd.end_date " +
                "LEFT JOIN category_discounts cd ON p.category_id = cd.category_id " +
                "AND NOW() BETWEEN cd.start_date AND cd.end_date " +
                "WHERE COALESCE(pd.discount_percentage, cd.discount_percentage, 0) > 0 " +
                "ORDER BY discount_percentage DESC LIMIT ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, limit);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setPrice(rs.getDouble("price"));
                product.setImage(rs.getString("image"));
                product.setDiscountPercentage(rs.getInt("discount_percentage"));
                product.setDiscountPrice(rs.getDouble("discount_price"));
                topDiscountProducts.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return topDiscountProducts;
    }

    public List<Product> getTopNewProducts(int limit) {
        List<Product> topNewProducts = new ArrayList<>();
        String query = "SELECT p.id, p.name, p.price, p.image, " +
                "COALESCE(pd.discount_percentage, cd.discount_percentage, 0) AS discount_percentage, " +
                "p.price * (1 - COALESCE(pd.discount_percentage, cd.discount_percentage, 0)/100) AS discount_price " +
                "FROM products p LEFT JOIN product_discounts pd ON p.id = pd.product_id " +
                "AND NOW() BETWEEN pd.start_date AND pd.end_date " +
                "LEFT JOIN category_discounts cd ON p.category_id = cd.category_id " +
                "AND NOW() BETWEEN cd.start_date AND cd.end_date " +
                "ORDER BY created_at DESC LIMIT ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, limit);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setPrice(rs.getDouble("price"));
                product.setImage(rs.getString("image"));
                product.setDiscountPercentage(rs.getInt("discount_percentage"));
                product.setDiscountPrice(rs.getDouble("discount_price"));
                topNewProducts.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return topNewProducts;
    }

    public List<Product> getTopSoldProducts(int limit) {
        List<Product> topSoldProducts = new ArrayList<>();
        String query = "SELECT p.id, p.name, p.price, p.image, " +
                "COALESCE(pd.discount_percentage, cd.discount_percentage, 0) AS discount_percentage, " +
                "p.price * (1 - COALESCE(pd.discount_percentage, cd.discount_percentage, 0)/100) AS discount_price " +
                "FROM products p LEFT JOIN product_discounts pd ON p.id = pd.product_id " +
                "AND NOW() BETWEEN pd.start_date AND pd.end_date " +
                "LEFT JOIN category_discounts cd ON p.category_id = cd.category_id " +
                "AND NOW() BETWEEN cd.start_date AND cd.end_date " +
                "ORDER BY sold_quantity DESC LIMIT ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, limit);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setPrice(rs.getDouble("price"));
                product.setImage(rs.getString("image"));
                product.setDiscountPercentage(rs.getInt("discount_percentage"));
                product.setDiscountPrice(rs.getDouble("discount_price"));
                topSoldProducts.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return topSoldProducts;
    }
}
