package vn.edu.hcmuaf.fit.webdacsanvungmienvn.service;

import vn.edu.hcmuaf.fit.webdacsanvungmienvn.dao.ProductDAO;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Product;

import java.util.List;

public class ProductService {
    private final ProductDAO productDAO = new ProductDAO();

    public List<Product> getTopDiscountProducts() {
        return productDAO.getTopDiscountProducts(10);
    }

    public List<Product> getTopNewProducts() {
        return productDAO.getTopNewProducts(10);
    }

    public List<Product> getTopSoldProducts() {
        return productDAO.getTopSoldProducts(10);
    }
}
