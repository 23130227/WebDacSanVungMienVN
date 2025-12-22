package vn.edu.hcmuaf.fit.webdacsanvungmienvn.service;

import vn.edu.hcmuaf.fit.webdacsanvungmienvn.dao.ProductDAO;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Product;

import java.util.List;

public class ProductService {
    private final ProductDAO productDAO = new ProductDAO();

    public List<Product> getTopDiscountProducts(int limit) {
        return productDAO.getTopDiscountProducts(limit);
    }

    public List<Product> getTopNewProducts(int limit) {
        return productDAO.getTopNewProducts(limit);
    }

    public List<Product> getTopSoldProducts(int limit) {
        return productDAO.getTopSoldProducts(limit);
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
}
