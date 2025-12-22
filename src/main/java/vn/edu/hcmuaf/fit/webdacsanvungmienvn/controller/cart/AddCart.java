package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller.cart;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.cart.cart;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Product;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.ProductService;

import java.io.IOException;

@WebServlet(name = "AddCart", value = "/add-cart")
public class AddCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        HttpSession session = request.getSession();
        cart cart = (cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new cart();
        }
        ProductService productService = new ProductService();
        Product product = productService.getProduct(productId);
        if(product != null){
            cart.addItem(product, quantity);
            session.setAttribute("cart", cart);
            response.sendRedirect("list-product");
            request.setAttribute("product", product);
            return;
        }
        request.setAttribute("msg", "Product not found");
        request.getRequestDispatcher("header.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}