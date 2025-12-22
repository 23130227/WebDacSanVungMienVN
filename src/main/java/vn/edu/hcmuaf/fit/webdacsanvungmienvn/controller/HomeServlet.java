package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Banner;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Product;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.BannerService;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.ProductService;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet", value = "/home")
public class HomeServlet extends HttpServlet {
    private final BannerService bannerService = new BannerService();
    private final ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Banner> banners = bannerService.getBanners();
        request.setAttribute("banners", banners);

        List<Product> topDiscountProducts = productService.getTopDiscountProducts(10);
        request.setAttribute("topDiscountProducts", topDiscountProducts);

        List<Product> topNewProducts = productService.getTopNewProducts(10);
        request.setAttribute("topNewProducts", topNewProducts);

        List<Product> topSoldProducts = productService.getTopSoldProducts(10);
        request.setAttribute("topSoldProducts", topSoldProducts);

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}