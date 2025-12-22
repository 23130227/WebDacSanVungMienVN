package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Product;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.ProductCategory;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.ProductCategoryService;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.ProductService;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CategoryProductsServlet", value = "/category-products")
public class CategoryProductsServlet extends HttpServlet {
    private final ProductCategoryService productCategoryService = new ProductCategoryService();
    private final ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int page = 1;
        if (request.getParameter("page") != null) {
            page = Integer.parseInt(request.getParameter("page"));
        }
        List<Product> products = new ArrayList<>();
        int totalProducts = 0;
        request.setAttribute("activeMenu", "all");
        if (request.getParameter("categoryId") != null) {
            int categoryId = Integer.parseInt(request.getParameter("categoryId"));
            products = productService.getCategoryProducts(categoryId, 20, page);
            totalProducts = productService.countCategoryProducts(categoryId);
            request.setAttribute("activeMenu", "category");
            request.setAttribute("categoryId", categoryId);
        } else if (request.getParameter("filter") != null) {
            String filter = request.getParameter("filter");
            products = productService.getAllProducts(filter, 20, page);
            totalProducts = productService.countAllProducts(filter);
            request.setAttribute("activeMenu", filter);
            request.setAttribute("filter", filter);
        } else if (request.getParameter("region") != null) {
            String region = request.getParameter("region");
            products = productService.getRegionProducts(region, 20, page);
            totalProducts = productService.countRegionProducts(region);
            request.setAttribute("activeMenu", region);
            request.setAttribute("region", region);
        } else {
            products = productService.getAllProducts("all", 20, page);
            totalProducts = productService.countAllProducts("all");
        }

        List<ProductCategory> productCategories = productCategoryService.getAllProductCategories();
        int totalPages = productService.totalPages(totalProducts, 20);

        request.setAttribute("productCategories", productCategories);
        request.setAttribute("products", products);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("page", page);

        request.getRequestDispatcher("category-products.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}