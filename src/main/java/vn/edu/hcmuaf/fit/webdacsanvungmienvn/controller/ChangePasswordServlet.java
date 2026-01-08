package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller;

import vn.edu.hcmuaf.fit.webdacsanvungmienvn.dao.UserDAO;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.util.MD5Util;

import java.io.IOException;

@WebServlet("/change-password")
public class ChangePasswordServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        // Lấy session hiện tại
        HttpSession session = request.getSession(false);

        // Chưa đăng nhập
        if (session == null || session.getAttribute("user") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        User user = (User) session.getAttribute("user");

        // Lấy dữ liệu từ form
        String oldPassword = request.getParameter("oldPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");


        // Kiểm tra mật khẩu cũ
        String oldPasswordHash = MD5Util.hash(oldPassword);
        if (oldPassword == null || !user.getPassword().equals(oldPasswordHash)) {
            request.setAttribute("error", "Mật khẩu hiện tại không đúng");
            request.getRequestDispatcher("change-password.jsp")
                    .forward(request, response);
            return;
        }
        if (newPassword == null || newPassword.trim().isEmpty()) {
            request.setAttribute("error", "Mật khẩu mới không được để trống");
            request.getRequestDispatcher("change-password.jsp").forward(request, response);
            return;
        }
        if (newPassword.length() < 8) {
            request.setAttribute("error", "Mật khẩu phải có ít nhất 8 ký tự");
            request.getRequestDispatcher("change-password.jsp")
                    .forward(request, response);
            return;
        }

        // Kiểm tra nhập lại mật khẩu
        if (confirmPassword == null || !newPassword.equals(confirmPassword)) {
            request.setAttribute("error", "Mật khẩu mới không khớp");
            request.getRequestDispatcher("change-password.jsp")
                    .forward(request, response);
            return;
        }

        // Cập nhật mật khẩu trong DB
        UserDAO dao = new UserDAO();
        boolean updated = dao.updatePassword(user.getId(), newPassword);

        if (updated) {
            // Cập nhật lại session
            user.setPassword(MD5Util.hash(newPassword));
            session.setAttribute("user", user);

            request.setAttribute("success", "Đổi mật khẩu thành công");
        } else {
            request.setAttribute("error", "Có lỗi xảy ra, vui lòng thử lại");
        }

        request.getRequestDispatcher("change-password.jsp")
                .forward(request, response);
    }
}
