package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller.productDetail;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.ReviewService;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

@WebServlet(name = "AddReview", value = "/add-review")
public class AddReview extends HttpServlet {
    private final ReviewService reviewService = new ReviewService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

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
            response.sendRedirect("product-detail?id=" + productId + "&error=" + URLEncoder.encode(e.getMessage(), StandardCharsets.UTF_8));
        }
    }
}