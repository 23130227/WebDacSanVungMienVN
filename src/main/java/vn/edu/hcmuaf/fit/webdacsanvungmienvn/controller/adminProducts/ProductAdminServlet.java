package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller.adminProducts;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Product;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.BrandService;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.ProductCategoryService;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.ProductService;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * Admin controller for product list + product view (eye).
 *
 * Notes:
 * - Matches the same pagination/list approach used by BrandAdminServlet/CategoryAdminServlet.
 * - Keeps a dedicated "view" endpoint for the eye action.
 */
@WebServlet(name = "ProductAdminServlet", urlPatterns = {
        "/admin/products",
        "/admin/products/view"
})
public class ProductAdminServlet extends HttpServlet {

    private final ProductService productService = new ProductService();
    private final BrandService brandService = new BrandService();
    private final ProductCategoryService productCategoryService = new ProductCategoryService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String servletPath = request.getServletPath();

        if ("/admin/products".equals(servletPath)) {
            handleList(request, response);
            return;
        }

        if ("/admin/products/view".equals(servletPath)) {
            handleView(request, response);
            return;
        }

        response.sendError(HttpServletResponse.SC_NOT_FOUND);
    }

    private void handleList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        int pageSize = 10;
        int page = 1;
        try {
            String pageStr = request.getParameter("page");
            if (pageStr != null) page = Integer.parseInt(pageStr);
        } catch (NumberFormatException ignored) {
        }
        if (page < 1) page = 1;

        int totalItems = productService.countAllProducts("all");
        int totalPages = (int) Math.ceil(totalItems / (double) pageSize);
        if (totalPages < 1) totalPages = 1;
        if (page > totalPages) page = totalPages;

        request.setAttribute("products", productService.getAllProducts("all", pageSize, page));
        // For Add/Edit dropdowns
        request.setAttribute("brands", brandService.getBrandsPaged(1, Integer.MAX_VALUE));
        request.setAttribute("categories", productCategoryService.getAllProductCategories());
        request.setAttribute("totalItems", totalItems);
        request.setAttribute("currentPage", page);
        request.setAttribute("pageSize", pageSize);
        request.setAttribute("totalPages", totalPages);

        request.getRequestDispatcher("/admin-products.jsp").forward(request, response);
    }

    /**
     * Eye action: returns product details as JSON.
     * Frontend can call: GET /admin/products/view?id=123
     */
    private void handleView(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String idStr = request.getParameter("id");
        int id;
        try {
            id = Integer.parseInt(idStr);
        } catch (Exception e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing/invalid id");
            return;
        }

        Product product = productService.getProductById(id);
        if (product == null) {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            return;
        }

        response.setContentType("application/json;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.print(toJson(product));
        }
    }

    private String toJson(Product p) {
        // Minimal JSON escaping for strings.
        return "{" +
                "\"id\":" + p.getId() + "," +
                "\"name\":\"" + esc(p.getName()) + "\"," +
                "\"price\":" + p.getPrice() + "," +
                "\"brandId\":" + p.getBrandId() + "," +
                "\"brandName\":\"" + esc(p.getBrandName()) + "\"," +
                "\"categoryId\":" + p.getCategoryId() + "," +
                "\"categoryName\":\"" + esc(p.getCategoryName()) + "\"," +
                "\"region\":\"" + esc(p.getRegion()) + "\"," +
                "\"quantity\":" + p.getQuantity() + "," +
                "\"soldQuantity\":" + p.getSoldQuantity() + "," +
                "\"specification\":\"" + esc(p.getSpecification()) + "\"," +
                "\"description\":\"" + esc(p.getDescription()) + "\"," +
                "\"image\":\"" + esc(p.getImage()) + "\"," +
                "\"createdAt\":\"" + esc(p.getCreatedAt() == null ? null : p.getCreatedAt().toString()) + "\"," +
                "\"discountPercentage\":" + p.getDiscountPercentage() + "," +
                "\"discountPrice\":" + p.getDiscountPrice() +
                "}";
    }

    private String esc(String s) {
        if (s == null) return "";
        return s.replace("\\", "\\\\")
                .replace("\"", "\\\"")
                .replace("\n", "\\n")
                .replace("\r", "\\r")
                .replace("\t", "\\t");
    }
}
