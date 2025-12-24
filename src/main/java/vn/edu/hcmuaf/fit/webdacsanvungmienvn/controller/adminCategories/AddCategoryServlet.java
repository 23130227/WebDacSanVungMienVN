package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller.adminCategories;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.ProductCategoryService;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

/**
 * Restored for backward-compatibility.
 * This servlet simply delegates to {@link CategoryAdminServlet}.
 */
@WebServlet(name = "AddCategoryServlet", value = "/admin/category/add")
public class AddCategoryServlet extends HttpServlet {

    private final ProductCategoryService productCategoryService = new ProductCategoryService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String categoryName = request.getParameter("categoryName");
        if (categoryName == null || categoryName.trim().isEmpty()) {
            response.sendRedirect(request.getContextPath() + "/admin/categories?error=empty");
            return;
        }

        String normalized = categoryName.trim();
        if (productCategoryService.categoryNameExists(normalized)) {
            response.sendRedirect(request.getContextPath() + "/admin/categories?error=duplicate&categoryName=" + URLEncoder.encode(normalized, StandardCharsets.UTF_8));
            return;
        }

        int newId = productCategoryService.createCategory(normalized);
        if (newId <= 0) {
            response.sendRedirect(request.getContextPath() + "/admin/categories?error=db");
            return;
        }

        response.sendRedirect(request.getContextPath() + "/admin/categories?success=1");
    }
}
