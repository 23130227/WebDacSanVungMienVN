package vn.edu.hcmuaf.fit.webdacsanvungmienvn.dao;

import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Product;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.util.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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

    public List<Product> getSearchProducts(String keyword, int limit, int page) {
        List<Product> searchProducts = new ArrayList<>();
        String query = "SELECT p.id, p.name, p.price, p.image, " +
                "COALESCE(pd.discount_percentage, cd.discount_percentage, 0) AS discount_percentage, " +
                "p.price * (1 - COALESCE(pd.discount_percentage, cd.discount_percentage, 0)/100) AS discount_price " +
                "FROM products p LEFT JOIN product_discounts pd ON p.id = pd.product_id " +
                "AND NOW() BETWEEN pd.start_date AND pd.end_date " +
                "LEFT JOIN category_discounts cd ON p.category_id = cd.category_id " +
                "AND NOW() BETWEEN cd.start_date AND cd.end_date " +
                "WHERE p.name LIKE ? LIMIT ? OFFSET ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setString(1, "%" + keyword + "%");
            ps.setInt(2, limit);
            ps.setInt(3, (page - 1) * limit);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setPrice(rs.getDouble("price"));
                product.setImage(rs.getString("image"));
                product.setDiscountPercentage(rs.getInt("discount_percentage"));
                product.setDiscountPrice(rs.getDouble("discount_price"));
                searchProducts.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return searchProducts;
    }

    public int countSearchProducts(String keyword) {
        int count = 0;
        String query = "SELECT COUNT(*) AS total FROM products WHERE name LIKE ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setString(1, "%" + keyword + "%");
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt("total");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }

    public List<Product> getCategoryProducts(int categoryId, int limit, int page) {
        List<Product> categoryProducts = new ArrayList<>();
        String query = "SELECT p.id, p.name, p.price, p.image, " +
                "COALESCE(pd.discount_percentage, cd.discount_percentage, 0) AS discount_percentage, " +
                "p.price * (1 - COALESCE(pd.discount_percentage, cd.discount_percentage, 0)/100) AS discount_price " +
                "FROM products p LEFT JOIN product_discounts pd ON p.id = pd.product_id " +
                "AND NOW() BETWEEN pd.start_date AND pd.end_date " +
                "LEFT JOIN category_discounts cd ON p.category_id = cd.category_id " +
                "AND NOW() BETWEEN cd.start_date AND cd.end_date " +
                "WHERE p.category_id = ? LIMIT ? OFFSET ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, categoryId);
            ps.setInt(2, limit);
            ps.setInt(3, (page - 1) * limit);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setPrice(rs.getDouble("price"));
                product.setImage(rs.getString("image"));
                product.setDiscountPercentage(rs.getInt("discount_percentage"));
                product.setDiscountPrice(rs.getDouble("discount_price"));
                categoryProducts.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return categoryProducts;
    }

    public int countCategoryProducts(int categoryId) {
        int count = 0;
        String query = "SELECT COUNT(*) AS total FROM products WHERE category_id = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, categoryId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt("total");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }

    public List<Product> getAllProducts(int limit, int page) {
        List<Product> products = new ArrayList<>();
        String query = "SELECT p.id, p.name, p.price, p.image, p.brand_id, b.name AS brand_name, " +
                "p.category_id, pc.name AS category_name, p.region, p.quantity, p.sold_quantity, " +
                "COALESCE(pd.discount_percentage, cd.discount_percentage, 0) AS discount_percentage, " +
                "p.price * (1 - COALESCE(pd.discount_percentage, cd.discount_percentage, 0)/100) AS discount_price " +
                "FROM products p " +
                "LEFT JOIN brands b ON p.brand_id = b.id " +
                "LEFT JOIN product_categories pc ON p.category_id = pc.id " +
                "LEFT JOIN product_discounts pd ON p.id = pd.product_id " +
                "AND NOW() BETWEEN pd.start_date AND pd.end_date " +
                "LEFT JOIN category_discounts cd ON p.category_id = cd.category_id " +
                "AND NOW() BETWEEN cd.start_date AND cd.end_date " +
                "LIMIT ? OFFSET ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, limit);
            ps.setInt(2, (page - 1) * limit);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setPrice(rs.getDouble("price"));
                product.setImage(rs.getString("image"));

                product.setBrandId(rs.getInt("brand_id"));
                product.setBrandName(rs.getString("brand_name"));
                product.setCategoryId(rs.getInt("category_id"));
                product.setCategoryName(rs.getString("category_name"));

                product.setRegion(rs.getString("region"));
                product.setQuantity(rs.getInt("quantity"));
                product.setSoldQuantity(rs.getInt("sold_quantity"));

                product.setDiscountPercentage(rs.getInt("discount_percentage"));
                product.setDiscountPrice(rs.getDouble("discount_price"));
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    public int countAllProducts() {
        int count = 0;
        String query = "SELECT COUNT(*) AS total FROM products";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt("total");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }

    public List<Product> getAllNewProducts(int limit, int page) {
        List<Product> newProducts = new ArrayList<>();
        String query = "SELECT p.id, p.name, p.price, p.image, " +
                "COALESCE(pd.discount_percentage, cd.discount_percentage, 0) AS discount_percentage, " +
                "p.price * (1 - COALESCE(pd.discount_percentage, cd.discount_percentage, 0)/100) AS discount_price " +
                "FROM products p LEFT JOIN product_discounts pd ON p.id = pd.product_id " +
                "AND NOW() BETWEEN pd.start_date AND pd.end_date " +
                "LEFT JOIN category_discounts cd ON p.category_id = cd.category_id " +
                "AND NOW() BETWEEN cd.start_date AND cd.end_date " +
                "ORDER BY created_at DESC LIMIT ? OFFSET ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, limit);
            ps.setInt(2, (page - 1) * limit);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setPrice(rs.getDouble("price"));
                product.setImage(rs.getString("image"));
                product.setDiscountPercentage(rs.getInt("discount_percentage"));
                product.setDiscountPrice(rs.getDouble("discount_price"));
                newProducts.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return newProducts;
    }

    public List<Product> getAllSoldProducts(int limit, int page) {
        List<Product> soldProducts = new ArrayList<>();
        String query = "SELECT p.id, p.name, p.price, p.image, " +
                "COALESCE(pd.discount_percentage, cd.discount_percentage, 0) AS discount_percentage, " +
                "p.price * (1 - COALESCE(pd.discount_percentage, cd.discount_percentage, 0)/100) AS discount_price " +
                "FROM products p LEFT JOIN product_discounts pd ON p.id = pd.product_id " +
                "AND NOW() BETWEEN pd.start_date AND pd.end_date " +
                "LEFT JOIN category_discounts cd ON p.category_id = cd.category_id " +
                "AND NOW() BETWEEN cd.start_date AND cd.end_date " +
                "ORDER BY sold_quantity DESC LIMIT ? OFFSET ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, limit);
            ps.setInt(2, (page - 1) * limit);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setPrice(rs.getDouble("price"));
                product.setImage(rs.getString("image"));
                product.setDiscountPercentage(rs.getInt("discount_percentage"));
                product.setDiscountPrice(rs.getDouble("discount_price"));
                soldProducts.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return soldProducts;
    }

    public List<Product> getRegionProducts(String region, int limit, int page) {
        List<Product> regionProducts = new ArrayList<>();
        String query = "SELECT p.id, p.name, p.price, p.image, " +
                "COALESCE(pd.discount_percentage, cd.discount_percentage, 0) AS discount_percentage, " +
                "p.price * (1 - COALESCE(pd.discount_percentage, cd.discount_percentage, 0)/100) AS discount_price " +
                "FROM products p LEFT JOIN product_discounts pd ON p.id = pd.product_id " +
                "AND NOW() BETWEEN pd.start_date AND pd.end_date " +
                "LEFT JOIN category_discounts cd ON p.category_id = cd.category_id " +
                "AND NOW() BETWEEN cd.start_date AND cd.end_date " +
                "WHERE p.region = ? LIMIT ? OFFSET ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setString(1, region);
            ps.setInt(2, limit);
            ps.setInt(3, (page - 1) * limit);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setPrice(rs.getDouble("price"));
                product.setImage(rs.getString("image"));
                product.setDiscountPercentage(rs.getInt("discount_percentage"));
                product.setDiscountPrice(rs.getDouble("discount_price"));
                regionProducts.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return regionProducts;
    }

    public int countRegionProducts(String region) {
        int count = 0;
        String query = "SELECT COUNT(*) AS total FROM products WHERE region = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setString(1, region);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt("total");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }

    public List<Product> getAllDiscountProducts(int limit, int page) {
        List<Product> discountProducts = new ArrayList<>();
        String query = "SELECT p.id, p.name, p.price, p.image, " +
                "COALESCE(pd.discount_percentage, cd.discount_percentage, 0) AS discount_percentage, " +
                "p.price * (1 - COALESCE(pd.discount_percentage, cd.discount_percentage, 0)/100) AS discount_price " +
                "FROM products p LEFT JOIN product_discounts pd ON p.id = pd.product_id " +
                "AND NOW() BETWEEN pd.start_date AND pd.end_date " +
                "LEFT JOIN category_discounts cd ON p.category_id = cd.category_id " +
                "AND NOW() BETWEEN cd.start_date AND cd.end_date " +
                "WHERE COALESCE(pd.discount_percentage, cd.discount_percentage, 0) > 0 " +
                "LIMIT ? OFFSET ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, limit);
            ps.setInt(2, (page - 1) * limit);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setPrice(rs.getDouble("price"));
                product.setImage(rs.getString("image"));
                product.setDiscountPercentage(rs.getInt("discount_percentage"));
                product.setDiscountPrice(rs.getDouble("discount_price"));
                discountProducts.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return discountProducts;
    }

    public int countAllDiscountProducts() {
        int count = 0;
        String query = "SELECT COUNT(*) AS total FROM products p " +
                "LEFT JOIN product_discounts pd ON p.id = pd.product_id " +
                "AND NOW() BETWEEN pd.start_date AND pd.end_date " +
                "LEFT JOIN category_discounts cd ON p.category_id = cd.category_id " +
                "AND NOW() BETWEEN cd.start_date AND cd.end_date " +
                "WHERE COALESCE(pd.discount_percentage, cd.discount_percentage, 0) > 0";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt("total");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }

    public Product getProduct(int productId) {
        Product product = null;
        String query = "SELECT p.id, p.name, p.price, p.image, p.description, p.quantity, " +
                "COALESCE(pd.discount_percentage, cd.discount_percentage, 0) AS discount_percentage, " +
                "p.price * (1 - COALESCE(pd.discount_percentage, cd.discount_percentage, 0)/100) AS discount_price " +
                "FROM products p LEFT JOIN product_discounts pd ON p.id = pd.product_id " +
                "AND NOW() BETWEEN pd.start_date AND pd.end_date " +
                "LEFT JOIN category_discounts cd ON p.category_id = cd.category_id " +
                "AND NOW() BETWEEN cd.start_date AND cd.end_date " +
                "WHERE p.id = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setPrice(rs.getDouble("price"));
                product.setImage(rs.getString("image"));
                product.setDescription(rs.getString("description"));
                product.setQuantity(rs.getInt("quantity"));
                product.setDiscountPercentage(rs.getInt("discount_percentage"));
                product.setDiscountPrice(rs.getDouble("discount_price"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return product;
    }

    public Product getProductById(int productId) {
        Product product = null;
        String query = "SELECT p.*, b.name AS brand_name, pc.name AS category_name, " +
                "COALESCE(pd.discount_percentage, cd.discount_percentage, 0) AS discount_percentage, " +
                "p.price * (1 - COALESCE(pd.discount_percentage, cd.discount_percentage, 0)/100) AS discount_price " +
                "FROM products p LEFT JOIN product_discounts pd ON p.id = pd.product_id " +
                "AND NOW() BETWEEN pd.start_date AND pd.end_date " +
                "LEFT JOIN category_discounts cd ON p.category_id = cd.category_id " +
                "AND NOW() BETWEEN cd.start_date AND cd.end_date " +
                "LEFT JOIN brands b ON p.brand_id = b.id " +
                "LEFT JOIN product_categories pc ON p.category_id = pc.id " +
                "WHERE p.id = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                product = new Product();
                product.setId(rs.getInt("id"));
                product.setName(rs.getString("name"));
                product.setPrice(rs.getDouble("price"));
                product.setBrandId(rs.getInt("brand_id"));
                product.setBrandName(rs.getString("brand_name"));
                product.setCategoryId(rs.getInt("category_id"));
                product.setCategoryName(rs.getString("category_name"));
                product.setSpecification(rs.getString("specification"));
                product.setQuantity(rs.getInt("quantity"));
                product.setSoldQuantity(rs.getInt("sold_quantity"));
                product.setRegion(rs.getString("region"));
                product.setDescription(rs.getString("description"));
                product.setImage(rs.getString("image"));
                product.setCreatedAt(rs.getTimestamp("created_at"));
                product.setDiscountPercentage(rs.getInt("discount_percentage"));
                product.setDiscountPrice(rs.getDouble("discount_price"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return product;
    }

    // ===== Admin CRUD =====

    public int createProduct(Product product) {
        String query = "INSERT INTO products (name, price, brand_id, category_id, specification, quantity, sold_quantity, region, description, image) " +
                "VALUES (?,?,?,?,?,?,?,?,?,?)";

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS)) {

            ps.setString(1, product.getName());
            ps.setDouble(2, product.getPrice());
            ps.setInt(3, product.getBrandId());
            ps.setInt(4, product.getCategoryId());
            ps.setString(5, product.getSpecification());
            ps.setInt(6, product.getQuantity());
            ps.setInt(7, product.getSoldQuantity());
            ps.setString(8, product.getRegion());
            ps.setString(9, product.getDescription());
            ps.setString(10, product.getImage());

            int affected = ps.executeUpdate();
            if (affected <= 0) return -1;

            try (ResultSet rs = ps.getGeneratedKeys()) {
                if (rs.next()) {
                    return rs.getInt(1);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }

    public boolean updateProduct(Product product) {
        String query = "UPDATE products SET name=?, price=?, brand_id=?, category_id=?, specification=?, quantity=?, sold_quantity=?, region=?, description=?, image=? " +
                "WHERE id=?";

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setString(1, product.getName());
            ps.setDouble(2, product.getPrice());
            ps.setInt(3, product.getBrandId());
            ps.setInt(4, product.getCategoryId());
            ps.setString(5, product.getSpecification());
            ps.setInt(6, product.getQuantity());
            ps.setInt(7, product.getSoldQuantity());
            ps.setString(8, product.getRegion());
            ps.setString(9, product.getDescription());
            ps.setString(10, product.getImage());
            ps.setInt(11, product.getId());

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean deleteProduct(int productId) {
        String query = "DELETE FROM products WHERE id=?";

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, productId);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
