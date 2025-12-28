package vn.edu.hcmuaf.fit.webdacsanvungmienvn.dao;

import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Banner;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.util.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BannerDAO {
    public List<Banner> getAllBanners() {
        List<Banner> banners = new ArrayList<>();
        String query = "SELECT * FROM banners";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Banner banner = new Banner();
                banner.setId(rs.getInt("id"));
                banner.setImage(rs.getString("image"));
                banners.add(banner);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return banners;
    }

    public int countAllBanners() {
        String sql = "SELECT COUNT(*) FROM banners";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            if (rs.next()) return rs.getInt(1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public List<Banner> getBannersPaged(int page, int pageSize) {
        List<Banner> banners = new ArrayList<>();
        // Follow database/default order (no explicit ORDER BY)
        String sql = "SELECT * FROM banners LIMIT ? OFFSET ?";
        int offset = (page - 1) * pageSize;
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, pageSize);
            ps.setInt(2, offset);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Banner b = new Banner();
                    b.setId(rs.getInt("id"));
                    b.setImage(rs.getString("image"));
                    banners.add(b);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return banners;
    }

    public int createBanner(String imagePath) {
        String sql = "INSERT INTO banners(image) VALUES (?)";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            ps.setString(1, imagePath);
            int affected = ps.executeUpdate();
            if (affected == 0) return 0;
            try (ResultSet keys = ps.getGeneratedKeys()) {
                if (keys.next()) return keys.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public boolean updateBannerImage(int id, String imagePath) {
        String sql = "UPDATE banners SET image=? WHERE id=?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, imagePath);
            ps.setInt(2, id);
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deleteBanner(int id) {
        String sql = "DELETE FROM banners WHERE id=?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public Banner findById(int id) {
        String sql = "SELECT * FROM banners WHERE id=?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    Banner b = new Banner();
                    b.setId(rs.getInt("id"));
                    b.setImage(rs.getString("image"));
                    return b;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
