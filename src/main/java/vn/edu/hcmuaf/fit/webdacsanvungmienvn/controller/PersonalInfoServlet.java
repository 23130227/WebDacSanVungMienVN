package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.dao.UserDAO;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.User;

import java.io.IOException;
import java.sql.Date;

@WebServlet("/personal-info")
public class PersonalInfoServlet extends HttpServlet {

    private final UserDAO userDAO = new UserDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session = req.getSession(false);
        if (session == null || session.getAttribute("user") == null) {
            resp.sendRedirect("login.jsp");
            return;
        }

        req.getRequestDispatcher("personal-info.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session = req.getSession(false);
        if (session == null || session.getAttribute("user") == null) {
            resp.sendRedirect("login.jsp");
            return;
        }

        User user = (User) session.getAttribute("user");

        String fullName = req.getParameter("fullName");
        String phoneNumber = req.getParameter("phoneNumber");
        String gender = req.getParameter("gender");
        String day = req.getParameter("day");
        String month = req.getParameter("month");
        String year = req.getParameter("year");

        Date dob = null;

        // kiểm tra user có chọn đủ hay chưa
        if (day != null && month != null && year != null
                && !day.equals("Ngày")
                && !month.equals("Tháng")
                && !year.equals("Năm")) {

            String dobStr = year + "-" + month + "-" + day;
            dob = Date.valueOf(dobStr);
        }



        boolean success = userDAO.updatePersonalInfo(
                user.getId(),
                fullName,
                phoneNumber,
                gender,
                dob
        );

        if (success) {
            user.setFullName(fullName);
            user.setPhoneNumber(phoneNumber);
            user.setGender(gender);
            user.setDateOfBirth(dob);

            session.setAttribute("user", user);
            req.setAttribute("message", "Cập nhật thông tin thành công");
        } else {
            req.setAttribute("error", "Cập nhật thất bại, vui lòng thử lại");
        }

        req.getRequestDispatcher("personal-info.jsp").forward(req, resp);
    }
}
