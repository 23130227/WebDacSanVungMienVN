package vn.edu.hcmuaf.fit.webdacsanvungmienvn.dao;

import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Banner;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.util.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BannerDAO {
    public List<Banner> getAllBanners() {
        List<Banner> allBanners = new ArrayList<>();
        String query = "SELECT * FROM banners";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Banner banner = new Banner();
                banner.setId(rs.getInt("id"));
                banner.setImage(rs.getString("image"));
                allBanners.add(banner);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return allBanners;
    }
}
