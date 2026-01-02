package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller.adminBrands;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.BrandService;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

@WebServlet(name = "AddBrandServlet", value = "/admin/brand/add")
public class AddBrandServlet extends HttpServlet {

    private final BrandService brandService = new BrandService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String info = request.getParameter("info");

        if (name == null || name.trim().isEmpty()) {
            response.sendRedirect(request.getContextPath() + "/admin/brands?error=empty");
            return;
        }

        String normalized = name.trim();
        if (brandService.brandNameExists(normalized)) {
            response.sendRedirect(request.getContextPath() + "/admin/brands?error=duplicate&name=" + URLEncoder.encode(normalized, StandardCharsets.UTF_8));
            return;
        }

        int newId = brandService.createBrand(normalized, info);
        if (newId <= 0) {
            response.sendRedirect(request.getContextPath() + "/admin/brands?error=db");
            return;
        }

        response.sendRedirect(request.getContextPath() + "/admin/brands?success=1");
    }
}

