package vn.edu.hcmuaf.fit.webdacsanvungmienvn.listener;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebListener;
import jakarta.servlet.http.*;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.ProductCategory;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.service.ProductCategoryService;

import java.util.List;

@WebListener
public class ProductCategoryListener implements ServletContextListener, HttpSessionListener, HttpSessionAttributeListener {
    private final ProductCategoryService productCategoryService = new ProductCategoryService();

    public ProductCategoryListener() {
    }

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        /* This method is called when the servlet context is initialized(when the Web application is deployed). */
        List<ProductCategory> topProductCategories = productCategoryService.getTopProductCategories(4);
        ServletContext context = sce.getServletContext();
        context.setAttribute("topProductCategories", topProductCategories);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        /* This method is called when the servlet Context is undeployed or Application Server shuts down. */
    }

    @Override
    public void sessionCreated(HttpSessionEvent se) {
        /* Session is created. */
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        /* Session is destroyed. */
    }

    @Override
    public void attributeAdded(HttpSessionBindingEvent sbe) {
        /* This method is called when an attribute is added to a session. */
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent sbe) {
        /* This method is called when an attribute is removed from a session. */
    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent sbe) {
        /* This method is called when an attribute is replaced in a session. */
    }
}
