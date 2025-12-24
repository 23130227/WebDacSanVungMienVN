package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller.adminCategories;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.ProductCategoryService;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

@WebServlet(name = "UpdateCategoryServlet", value = "/admin/category/update")
public class UpdateCategoryServlet extends HttpServlet {

    private final ProductCategoryService productCategoryService = new ProductCategoryService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String idStr = request.getParameter("id");
        String name = request.getParameter("categoryName");

        int id;
        try {
            id = Integer.parseInt(idStr);
        } catch (Exception e) {
            response.sendRedirect(request.getContextPath() + "/admin/categories?error=invalid_id");
            return;
        }

        if (name == null || name.trim().isEmpty()) {
            response.sendRedirect(request.getContextPath() + "/admin/categories?error=empty");
            return;
        }

        String normalized = name.trim();
        if (productCategoryService.categoryNameExistsExcludingId(normalized, id)) {
            response.sendRedirect(request.getContextPath() + "/admin/categories?error=duplicate&categoryName=" + URLEncoder.encode(normalized, StandardCharsets.UTF_8));
            return;
        }

        boolean ok = productCategoryService.updateCategory(id, normalized);
        if (!ok) {
            response.sendRedirect(request.getContextPath() + "/admin/categories?error=update_failed");
            return;
        }

        response.sendRedirect(request.getContextPath() + "/admin/categories?success=updated");
    }
}
