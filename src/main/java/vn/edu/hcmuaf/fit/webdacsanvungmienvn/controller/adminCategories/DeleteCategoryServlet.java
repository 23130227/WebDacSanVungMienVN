package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller.adminCategories;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.ProductCategoryService;

import java.io.IOException;

@WebServlet(name = "DeleteCategoryServlet", value = "/admin/category/delete")
public class DeleteCategoryServlet extends HttpServlet {

    private final ProductCategoryService productCategoryService = new ProductCategoryService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String idStr = request.getParameter("id");
        int id;
        try {
            id = Integer.parseInt(idStr);
        } catch (Exception e) {
            response.sendRedirect(request.getContextPath() + "/admin/categories?error=invalid_id");
            return;
        }

        boolean ok = productCategoryService.deleteCategory(id);
        if (!ok) {
            response.sendRedirect(request.getContextPath() + "/admin/categories?error=delete_failed");
            return;
        }

        response.sendRedirect(request.getContextPath() + "/admin/categories?success=deleted");
    }
}
