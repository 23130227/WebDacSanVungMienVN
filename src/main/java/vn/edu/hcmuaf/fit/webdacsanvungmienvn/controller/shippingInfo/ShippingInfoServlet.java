package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller.shippingInfo;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.ShippingInfo;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.ShippingInfoService;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShippingInfoServlet", value = "/shipping-info")
public class ShippingInfoServlet extends HttpServlet {
    private final ShippingInfoService shippingInfoService = new ShippingInfoService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<ShippingInfo> shippingInfos = shippingInfoService.getShippingInfosByUserId(1);
        String error = request.getParameter("error");
        if (error != null) {
            request.setAttribute("error", error);
        }
        request.setAttribute("shippingInfos", shippingInfos);
        request.getRequestDispatcher("shipping-info.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}