package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller.shippingInfo;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.ShippingInfoService;

import java.io.IOException;

@WebServlet(name = "DeleteShippingInfo", value = "/delete-shipping-info")
public class DeleteShippingInfo extends HttpServlet {
    private final ShippingInfoService shippingInfoService = new ShippingInfoService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int shippingInfoId = Integer.parseInt(request.getParameter("shippingInfoId"));

        shippingInfoService.deleteShippingInfo(shippingInfoId);
        response.sendRedirect("shipping-info");
    }
}