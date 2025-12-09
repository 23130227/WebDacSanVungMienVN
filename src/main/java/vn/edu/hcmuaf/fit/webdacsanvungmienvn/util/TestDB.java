package vn.edu.hcmuaf.fit.webdacsanvungmienvn.util;

import java.sql.Connection;

public class TestDB {
    public static void main(String[] args) {
        try (Connection conn = DBConnect.getConnection()) {
            if (conn != null && !conn.isClosed()) {
                System.out.println("Kết nối thành công!");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}