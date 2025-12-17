package vn.edu.hcmuaf.fit.webdacsanvungmienvn.dao;

import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.ProductCategory;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.util.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductCategoryDAO {
    public List<ProductCategory> getTopProductCategories(int limit) {
        List<ProductCategory> topProductCategories = new ArrayList<>();
        String query = "SELECT * FROM product_categories ORDER BY name LIMIT ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, limit);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ProductCategory productCategory = new ProductCategory();
                productCategory.setId(rs.getInt("id"));
                productCategory.setName(rs.getString("name"));
                topProductCategories.add(productCategory);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return topProductCategories;
    }
}