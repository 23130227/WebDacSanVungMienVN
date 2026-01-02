package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import vn.edu.hcmuaf.fit.webdacsanvungmienvn.dao.UserDAO;

import java.io.IOException;
import java.util.Random;

@WebServlet("/forgot-password")
public class ForgotPasswordServlet extends HttpServlet {

    private final UserDAO userDAO = new UserDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String action = request.getParameter("action");


        if ("sendOtp".equals(action)) {
            String email = request.getParameter("email");

            if (email == null || email.isEmpty()) {
                request.setAttribute("error", "Vui lòng nhập email");
            } else if (!userDAO.existsByEmail(email)) {
                request.setAttribute("error", "Email không tồn tại!");
            } else {
                String otp = String.valueOf(100000 + new Random().nextInt(900000));

                session.setAttribute("OTP", otp);
                session.setAttribute("OTP_EMAIL", email);

                // Demo: in OTP ra console
                System.out.println("OTP (demo): " + otp);

                request.setAttribute("success", "OTP đã được gửi!");
            }
        }


        else if ("resetPassword".equals(action)) {

            String otpInput = request.getParameter("OTP");
            String newPass = request.getParameter("newPassword");
            String confirmPass = request.getParameter("confirmPassword");

            String sessionOtp = (String) session.getAttribute("OTP");
            String email = (String) session.getAttribute("OTP_EMAIL");

            if (sessionOtp == null || !sessionOtp.equals(otpInput)) {
                request.setAttribute("error", "OTP không đúng hoặc đã hết hạn!");
            } else if (newPass == null || newPass.isEmpty()) {
                request.setAttribute("error", "Mật khẩu mới không được để trống!");
            } else if (!newPass.equals(confirmPass)) {
                request.setAttribute("error", "Mật khẩu nhập lại không khớp!");
            } else {
                userDAO.updatePassword(email, newPass);


                // Xóa OTP sau khi dùng
                session.removeAttribute("OTP");
                session.removeAttribute("OTP_EMAIL");

                request.setAttribute("success", "Đổi mật khẩu thành công!");
            }
        }

        request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
    }
}
