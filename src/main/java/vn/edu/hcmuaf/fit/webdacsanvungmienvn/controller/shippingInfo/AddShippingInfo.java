package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller.shippingInfo;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.ShippingInfoService;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

@WebServlet(name = "AddShippingInfo", value = "/add-shipping-info")
public class AddShippingInfo extends HttpServlet {
    private final ShippingInfoService shippingInfoService = new ShippingInfoService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = 1; // Replace with actual user ID retrieval logic
        String receiverName = request.getParameter("receiverName");
        String receiverPhoneNumber = request.getParameter("receiverPhoneNumber");
        String province = request.getParameter("provinceName");
        String district = request.getParameter("districtName");
        String ward = request.getParameter("wardName");
        String detailedAddress = request.getParameter("detailedAddress");

        try {
            shippingInfoService.addShippingInfo(userId, receiverName, receiverPhoneNumber, province, district, ward, detailedAddress);
            response.sendRedirect("shipping-info");
        } catch (IllegalArgumentException e) {
            response.sendRedirect("shipping-info?error=" + URLEncoder.encode(e.getMessage(), StandardCharsets.UTF_8));
        }
    }
}