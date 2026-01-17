package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller.adminProducts;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Product;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.ProductService;

import java.io.IOException;

@WebServlet(name = "AddProductServlet", value = "/admin/product/add")
public class AddProductServlet extends HttpServlet {

    private final ProductService productService = new ProductService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String priceStr = request.getParameter("price");
        String quantityStr = request.getParameter("quantity");
        String brandIdStr = request.getParameter("brandId");
        String categoryIdStr = request.getParameter("categoryId");
        String region = request.getParameter("region");
        String specification = request.getParameter("specification");
        String description = request.getParameter("description");
        String image = request.getParameter("image");

        if (name == null || name.trim().isEmpty()) {
            response.sendRedirect(request.getContextPath() + "/admin/products?error=empty_name");
            return;
        }

        if (specification == null || specification.trim().isEmpty()) {
            response.sendRedirect(request.getContextPath() + "/admin/products?error=empty_specification");
            return;
        }

        double price;
        int quantity;
        int brandId;
        int categoryId;
        try {
            price = Double.parseDouble(priceStr);
            quantity = Integer.parseInt(quantityStr);
            brandId = Integer.parseInt(brandIdStr);
            categoryId = Integer.parseInt(categoryIdStr);
        } catch (Exception e) {
            response.sendRedirect(request.getContextPath() + "/admin/products?error=invalid_input");
            return;
        }

        if (price < 0 || quantity < 0 || brandId <= 0 || categoryId <= 0) {
            response.sendRedirect(request.getContextPath() + "/admin/products?error=invalid_input");
            return;
        }

        Product p = new Product();
        p.setName(name.trim());
        p.setPrice(price);
        p.setQuantity(quantity);
        p.setSoldQuantity(0);
        p.setBrandId(brandId);
        p.setCategoryId(categoryId);
        p.setRegion(region);
        p.setSpecification(specification.trim());
        p.setDescription(description);
        p.setImage(image);

        int newId = productService.createProduct(p);
        if (newId <= 0) {
            response.sendRedirect(request.getContextPath() + "/admin/products?error=db");
            return;
        }

        response.sendRedirect(request.getContextPath() + "/admin/products?success=created");
    }
}
