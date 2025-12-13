package vn.edu.hcmuaf.fit.webdacsanvungmienvn.service;

import vn.edu.hcmuaf.fit.webdacsanvungmienvn.dao.ProductCategoryDAO;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.ProductCategory;

import java.util.List;

public class ProductCategoryService {
    private final ProductCategoryDAO productCategoryDAO = new ProductCategoryDAO();

    public List<ProductCategory> getTopProductCategories() {
        return productCategoryDAO.getTopProductCategories(4);
    }
}