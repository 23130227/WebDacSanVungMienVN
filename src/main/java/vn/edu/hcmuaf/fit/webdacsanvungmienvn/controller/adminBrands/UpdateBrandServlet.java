package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller.adminBrands;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

@WebServlet(name = "UpdateBrandServlet", value = "/admin/brand/update")
public class UpdateBrandServlet extends HttpServlet {

    private final vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.BrandService brandService =
            new vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.BrandService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String idStr = request.getParameter("id");
        int id;
        try {
            id = Integer.parseInt(idStr);
        } catch (Exception e) {
            response.sendRedirect(request.getContextPath() + "/admin/brands?error=invalid_id");
            return;
        }

        String name = request.getParameter("name");
        String info = request.getParameter("info");

        if (name == null || name.trim().isEmpty()) {
            response.sendRedirect(request.getContextPath() + "/admin/brands?error=empty");
            return;
        }

        String normalized = name.trim();
        if (brandService.brandNameExistsExcludingId(normalized, id)) {
            response.sendRedirect(request.getContextPath() + "/admin/brands?error=duplicate&name=" + URLEncoder.encode(normalized, StandardCharsets.UTF_8));
            return;
        }

        boolean ok = brandService.updateBrand(id, normalized, info);
        if (!ok) {
            response.sendRedirect(request.getContextPath() + "/admin/brands?error=update_failed");
            return;
        }

        response.sendRedirect(request.getContextPath() + "/admin/brands?success=updated");
    }
}
