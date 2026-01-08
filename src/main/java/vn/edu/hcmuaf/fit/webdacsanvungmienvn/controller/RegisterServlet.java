package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.dao.UserDAO;

import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    private final UserDAO userDAO = new UserDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String rePassword = request.getParameter("rePassword");

        if (email == null || email.trim().isEmpty()) {
            request.setAttribute("error", "Email không được để trống");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }
        if (password == null || password.trim().isEmpty()) {
            request.setAttribute("error", "Mật khẩu không được để trống");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }
        if (password.length() < 8) {
            request.setAttribute("error", "Mật khẩu phải có ít nhất 8 ký tự");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        if (!password.equals(rePassword)) {
            request.setAttribute("error", "Mật khẩu nhập lại không khớp");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        if (userDAO.existsByEmail(email)) {
            request.setAttribute("error", "Email đã tồn tại");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        boolean success = userDAO.insertUser(email, password);

        if (success) {
            request.setAttribute("success", "Đăng ký thành công! Vui lòng đăng nhập");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            request.setAttribute("error", "Đăng ký thất bại");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }
}
