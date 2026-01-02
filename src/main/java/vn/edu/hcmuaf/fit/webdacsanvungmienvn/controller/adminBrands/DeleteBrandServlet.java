package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller.adminBrands;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.BrandService;

import java.io.IOException;

@WebServlet(name = "DeleteBrandServlet", value = "/admin/brand/delete")
public class DeleteBrandServlet extends HttpServlet {

    private final BrandService brandService = new BrandService();

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

        boolean ok = brandService.deleteBrand(id);
        if (!ok) {
            // Likely foreign key constraint from products -> brands
            response.sendRedirect(request.getContextPath() + "/admin/brands?error=delete_failed");
            return;
        }

        response.sendRedirect(request.getContextPath() + "/admin/brands?success=deleted");
    }
}

