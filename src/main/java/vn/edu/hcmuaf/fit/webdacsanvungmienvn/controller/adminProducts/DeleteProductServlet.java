package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller.adminProducts;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.ProductService;

import java.io.IOException;

@WebServlet(name = "DeleteProductServlet", value = "/admin/product/delete")
public class DeleteProductServlet extends HttpServlet {

    private final ProductService productService = new ProductService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String idStr = request.getParameter("id");
        int id;
        try {
            id = Integer.parseInt(idStr);
        } catch (Exception e) {
            response.sendRedirect(request.getContextPath() + "/admin/products?error=invalid_id");
            return;
        }

        boolean ok = productService.deleteProduct(id);
        if (!ok) {
            response.sendRedirect(request.getContextPath() + "/admin/products?error=delete_failed");
            return;
        }

        response.sendRedirect(request.getContextPath() + "/admin/products?success=deleted");
    }
}

