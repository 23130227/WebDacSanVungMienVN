package vn.edu.hcmuaf.fit.webdacsanvungmienvn.service;

import vn.edu.hcmuaf.fit.webdacsanvungmienvn.dao.BannerDAO;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Banner;

import java.util.List;

public class BannerService {
    private final BannerDAO bannerDAO = new BannerDAO();

    public List<Banner> getAllBanners() {
        return bannerDAO.getAllBanners();
    }
}
