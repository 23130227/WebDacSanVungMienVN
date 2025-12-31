package vn.edu.hcmuaf.fit.webdacsanvungmienvn.dao;

import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.User;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.util.DBConnect;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.util.MD5Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Date;

public class UserDAO {

    public User login(String email, String password) {
        String sql = """
                SELECT *
                FROM users
                WHERE email = ? AND password = ?
                """;

        try (
                Connection conn = DBConnect.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)
        ) {
            ps.setString(1, email);
            ps.setString(2, MD5Util.hash(password));

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    User u = new User();
                    u.setId(rs.getInt("id"));
                    u.setEmail(rs.getString("email"));
                    u.setPassword(rs.getString("password"));
                    u.setFullName(rs.getString("full_name"));
                    u.setPhoneNumber(rs.getString("phone_number"));
                    u.setGender(rs.getString("gender"));
                    u.setDateOfBirth(rs.getDate("date_of_birth"));
                    u.setRole(rs.getString("role"));
                    return u;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }
    public boolean updatePassword(int userId, String newPassword) {
        String sql = "UPDATE users SET password = ? WHERE id = ?";

        try (
                Connection conn = DBConnect.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)
        ) {
            ps.setString(1, MD5Util.hash(newPassword));
            ps.setInt(2, userId);

            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public boolean existsByEmail(String email) {
        String sql = "SELECT id FROM users WHERE email = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            return rs.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public void updatePassword(String email, String password) {
        String sql = "UPDATE users SET password = ? WHERE email = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, MD5Util.hash(password));
            ps.setString(2, email);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public boolean updatePersonalInfo(
            int id,
            String fullName,
            String phoneNumber,
            String gender,
            Date dateOfBirth
    ) {
        String sql = """
        UPDATE users
        SET full_name = ?, phone_number = ?, gender = ?, date_of_birth = ?
        WHERE id = ?
        """;

        try (
                Connection conn = DBConnect.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)
        ) {
            ps.setString(1, fullName);
            ps.setString(2, phoneNumber);
            ps.setString(3, gender);
            ps.setDate(4, dateOfBirth);
            ps.setInt(5, id);

            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public boolean insertUser(String email, String password) {
        String sql = """
        INSERT INTO users (email, password, full_name, phone_number, gender, role)
        VALUES (?, ?, '', '', 'Không xác định', 'user')
        """;

        try (
                Connection conn = DBConnect.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)
        ) {
            ps.setString(1, email);
            ps.setString(2, MD5Util.hash(password));
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }


}
