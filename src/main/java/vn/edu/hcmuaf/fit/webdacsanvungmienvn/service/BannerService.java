package vn.edu.hcmuaf.fit.webdacsanvungmienvn.service;

import vn.edu.hcmuaf.fit.webdacsanvungmienvn.dao.BannerDAO;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Banner;

import java.util.List;

public class BannerService {
    private final BannerDAO bannerDAO = new BannerDAO();

    public List<Banner> getAllBanners() {
        return bannerDAO.getAllBanners();
    }

    public int countAllBanners() {
        return bannerDAO.countAllBanners();
    }

    public List<Banner> getBannersPaged(int page, int pageSize) {
        return bannerDAO.getBannersPaged(page, pageSize);
    }

    public int createBanner(String imagePath) {
        return bannerDAO.createBanner(imagePath);
    }

    public boolean updateBannerImage(int id, String imagePath) {
        return bannerDAO.updateBannerImage(id, imagePath);
    }

    public boolean deleteBanner(int id) {
        return bannerDAO.deleteBanner(id);
    }

    public Banner findById(int id) {
        return bannerDAO.findById(id);
    }
}
