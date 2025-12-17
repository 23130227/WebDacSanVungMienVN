package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Product;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.ProductService;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchResultsServlet", value = "/search-results")
public class SearchResultsServlet extends HttpServlet {
    private final ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String keyword = request.getParameter("keyword").trim();
        if (keyword.isEmpty()) {
            response.sendRedirect("home");
            return;
        }
        int page = 1;
        if (request.getParameter("page") != null) {
            page = Integer.parseInt(request.getParameter("page"));
        }

        List<Product> searchProducts = productService.getSearchProducts(keyword, 20, page);
        int totalProducts = productService.countSearchProducts(keyword);
        int totalPages = productService.totalPages(totalProducts, 20);

        request.setAttribute("searchProducts", searchProducts);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("keyword", keyword);
        request.setAttribute("page", page);

        request.getRequestDispatcher("search-results.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}