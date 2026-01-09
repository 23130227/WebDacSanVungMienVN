package vn.edu.hcmuaf.fit.webdacsanvungmienvn.controller.cart;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.cart.Cart;

import java.io.IOException;

@WebServlet(name = "UpdateItem", value = "/update-item")
public class UpdateItem extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart != null) {
            cart.updateItem(productId, quantity);
            session.setAttribute("cart", cart);
        }
        String referer = request.getHeader("Referer");
        response.sendRedirect(referer != null ? referer : "cart");
    }
}