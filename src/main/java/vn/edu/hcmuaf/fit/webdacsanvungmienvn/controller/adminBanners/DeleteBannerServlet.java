package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller.adminBanners;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.BannerService;

import java.io.IOException;

@WebServlet(name = "DeleteBannerServlet", value = "/admin/banner/delete")
public class DeleteBannerServlet extends HttpServlet {

    private final BannerService bannerService = new BannerService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        int id;
        try {
            id = Integer.parseInt(request.getParameter("id"));
        } catch (Exception e) {
            response.sendRedirect(request.getContextPath() + "/admin/banners?error=id");
            return;
        }

        boolean ok = bannerService.deleteBanner(id);
        if (!ok) {
            response.sendRedirect(request.getContextPath() + "/admin/banners?error=db");
            return;
        }

        response.sendRedirect(request.getContextPath() + "/admin/banners?success=1");
    }
}

