package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Product;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.RatingInfo;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Review;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.ProductService;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.ReviewService;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductDetailServlet", value = "/product-detail")
public class ProductDetailServlet extends HttpServlet {
    private final ProductService productService = new ProductService();
    private final ReviewService reviewService = new ReviewService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("id"));
        loadProductDetails(request, productId);
        request.getRequestDispatcher("product-detail.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        int userId = 1; // Temporarily hardcoded, should get from session when login is implemented
        String content = request.getParameter("content");
        String rating = request.getParameter("rating");

        try {
            reviewService.addReview(productId, userId, content, rating);
            response.sendRedirect("product-detail?id=" + productId);
        } catch (IllegalArgumentException e) {
            request.setAttribute("error", e.getMessage());
            loadProductDetails(request, productId);
            request.getRequestDispatcher("product-detail.jsp").forward(request, response);
        }
    }

    private void loadProductDetails(HttpServletRequest request, int productId) {
        Product product = productService.getProductById(productId);
        request.setAttribute("product", product);

        int page = 1;
        if (request.getParameter("page") != null) {
            page = Integer.parseInt(request.getParameter("page"));
        }
        request.setAttribute("page", page);

        List<Review> reviews = reviewService.getReviewsByProductId(productId, 5, page);
        RatingInfo ratingInfo = reviewService.getRatingInfoByProductId(productId);
        int totalReviews = reviewService.countReviewsByProductId(productId);
        int totalPages = reviewService.totalPages(totalReviews, 5);
        request.setAttribute("reviews", reviews);
        request.setAttribute("ratingInfo", ratingInfo);
        request.setAttribute("totalReviews", totalReviews);
        request.setAttribute("totalPages", totalPages);
    }
}