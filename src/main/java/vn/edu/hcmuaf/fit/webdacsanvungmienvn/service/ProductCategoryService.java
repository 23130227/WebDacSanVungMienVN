package vn.edu.hcmuaf.fit.webdacsanvungmienvn.service;

import vn.edu.hcmuaf.fit.webdacsanvungmienvn.dao.ProductCategoryDAO;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.ProductCategory;

import java.util.List;

public class ProductCategoryService {
    private final ProductCategoryDAO productCategoryDAO = new ProductCategoryDAO();

    public List<ProductCategory> getTopProductCategories(int limit) {
        return productCategoryDAO.getTopProductCategories(limit);
    }

    public List<ProductCategory> getAllProductCategories() {
        return productCategoryDAO.getAllProductCategories();
    }

    public int createCategory(String name) {
        if (name == null) return 0;
        String normalized = name.trim();
        if (normalized.isEmpty()) return 0;
        return productCategoryDAO.create(normalized);
    }

    public int countAllCategories() {
        return productCategoryDAO.countAll();
    }

    public List<ProductCategory> getCategoriesPaged(int page, int pageSize) {
        return productCategoryDAO.getProductCategoriesPaged(page, pageSize);
    }

    public boolean updateCategory(int id, String name) {
        if (id <= 0) return false;
        if (name == null || name.trim().isEmpty()) return false;
        return productCategoryDAO.update(id, name.trim());
    }

    public boolean deleteCategory(int id) {
        if (id <= 0) return false;
        return productCategoryDAO.delete(id);
    }

    public boolean categoryNameExists(String name) {
        if (name == null) return false;
        String normalized = name.trim();
        if (normalized.isEmpty()) return false;
        return productCategoryDAO.existsByName(normalized);
    }

    public boolean categoryNameExistsExcludingId(String name, int excludeId) {
        if (name == null) return false;
        String normalized = name.trim();
        if (normalized.isEmpty()) return false;
        return productCategoryDAO.existsByNameExcludingId(normalized, excludeId);
    }
}