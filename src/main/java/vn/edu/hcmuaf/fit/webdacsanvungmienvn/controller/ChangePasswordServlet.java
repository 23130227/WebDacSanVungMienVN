package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller;

import vn.edu.hcmuaf.fit.webdacsanvungmienvn.dao.UserDAO;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/change-password")
public class ChangePasswordServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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
        if (!user.getPassword().equals(oldPassword)) {
            request.setAttribute("error", "Mật khẩu hiện tại không đúng");
            request.getRequestDispatcher("change-password.jsp")
                    .forward(request, response);
            return;
        }

        // Kiểm tra nhập lại mật khẩu
        if (!newPassword.equals(confirmPassword)) {
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
            user.setPassword(newPassword);
            session.setAttribute("user", user);

            request.setAttribute("success", "Đổi mật khẩu thành công");
        } else {
            request.setAttribute("error", "Có lỗi xảy ra, vui lòng thử lại");
        }

        request.getRequestDispatcher("change-password.jsp")
                .forward(request, response);
    }
}
