package vn.edu.hcmuaf.fit.webdacsanvungmienvn.service;

import vn.edu.hcmuaf.fit.webdacsanvungmienvn.dao.ProductDAO;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Product;

import java.util.List;

public class ProductService {
    private final ProductDAO productDAO = new ProductDAO();

    public List<Product> getTopProducts(String filter, int limit) {
        switch (filter) {
            case "discount":
                return productDAO.getTopDiscountProducts(limit);
            case "new":
                return productDAO.getTopNewProducts(limit);
            case "sold":
                return productDAO.getTopSoldProducts(limit);
            default:
                return null;
        }
    }

    public List<Product> getSearchProducts(String keyword, int limit, int page) {
        return productDAO.getSearchProducts(keyword, limit, page);
    }

    public int countSearchProducts(String keyword) {
        return productDAO.countSearchProducts(keyword);
    }

    public int totalPages(int totalProducts, int productsPerPage) {
        return (int) Math.ceil((double) totalProducts / productsPerPage);
    }

    public List<Product> getCategoryProducts(int categoryId, int limit, int page) {
        return productDAO.getCategoryProducts(categoryId, limit, page);
    }

    public int countCategoryProducts(int categoryId) {
        return productDAO.countCategoryProducts(categoryId);
    }

    public List<Product> getAllProducts(String filter, int limit, int page) {
        switch (filter) {
            case "all":
                return productDAO.getAllProducts(limit, page);
            case "new":
                return productDAO.getAllNewProducts(limit, page);
            case "sold":
                return productDAO.getAllSoldProducts(limit, page);
            case "discount":
                return productDAO.getAllDiscountProducts(limit, page);
            default:
                return null;
        }
    }

    public int countAllProducts(String filter) {
        switch (filter) {
            case "all":
                return productDAO.countAllProducts();
            case "new":
                return productDAO.countAllProducts();
            case "sold":
                return productDAO.countAllProducts();
            case "discount":
                return productDAO.countAllDiscountProducts();
            default:
                return 0;
        }
    }

    public List<Product> getRegionProducts(String region, int limit, int page) {
        switch (region) {
            case "north":
                return productDAO.getRegionProducts("Miền Bắc", limit, page);
            case "central":
                return productDAO.getRegionProducts("Miền Trung", limit, page);
            case "south":
                return productDAO.getRegionProducts("Miền Nam", limit, page);
            default:
                return null;
        }
    }

    public int countRegionProducts(String region) {
        switch (region) {
            case "north":
                return productDAO.countRegionProducts("Miền Bắc");
            case "central":
                return productDAO.countRegionProducts("Miền Trung");
            case "south":
                return productDAO.countRegionProducts("Miền Nam");
            default:
                return 0;
        }
    }

    public Product getProduct(int productId) {
        return productDAO.getProduct(productId);
    }
}
