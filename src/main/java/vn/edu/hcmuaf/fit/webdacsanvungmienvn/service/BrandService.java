package vn.edu.hcmuaf.fit.webdacsanvungmienvn.service;

import vn.edu.hcmuaf.fit.webdacsanvungmienvn.dao.BrandDAO;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Brand;

import java.util.List;

public class BrandService {
    private final BrandDAO brandDAO = new BrandDAO();

    public int countAllBrands() {
        return brandDAO.countAll();
    }

    public List<Brand> getBrandsPaged(int page, int pageSize) {
        return brandDAO.getBrandsPaged(page, pageSize);
    }

    public int createBrand(String name, String info) {
        if (name == null) return 0;
        String normalized = name.trim();
        if (normalized.isEmpty()) return 0;

        String normalizedInfo = info == null ? null : info.trim();
        if (normalizedInfo != null && normalizedInfo.isEmpty()) normalizedInfo = null;

        return brandDAO.create(normalized, normalizedInfo);
    }

    public boolean updateBrand(int id, String name, String info) {
        if (id <= 0) return false;
        if (name == null) return false;
        String normalized = name.trim();
        if (normalized.isEmpty()) return false;

        String normalizedInfo = info == null ? null : info.trim();
        if (normalizedInfo != null && normalizedInfo.isEmpty()) normalizedInfo = null;

        return brandDAO.update(id, normalized, normalizedInfo);
    }

    public boolean deleteBrand(int id) {
        if (id <= 0) return false;
        return brandDAO.delete(id);
    }

    public boolean brandNameExists(String name) {
        if (name == null) return false;
        String normalized = name.trim();
        if (normalized.isEmpty()) return false;
        return brandDAO.existsByName(normalized);
    }

    public boolean brandNameExistsExcludingId(String name, int excludeId) {
        if (name == null) return false;
        String normalized = name.trim();
        if (normalized.isEmpty()) return false;
        return brandDAO.existsByNameExcludingId(normalized, excludeId);
    }
}

