package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller;

import vn.edu.hcmuaf.fit.webdacsanvungmienvn.dao.UserDAO;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (email != null) email = email.trim();
        if (password != null) password = password.trim();

        if (password == null || password.length() < 8) {
            request.setAttribute("error", "Mật khẩu phải có ít nhất 8 ký tự");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }
        UserDAO dao = new UserDAO();
        User user = dao.login(email, password);

        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            response.sendRedirect("index-login.jsp");
        } else {
            request.setAttribute("error", "Email hoặc mật khẩu không đúng");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        System.out.println(email + " - " + password);

    }

}
