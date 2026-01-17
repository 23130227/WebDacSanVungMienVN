package vn.edu.hcmuaf.fit.webdacsanvungmienvn.cart;

import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.Product;

public class CartItem {
    private int quantity;
    private double price;
    private Product product;

    public int getQuantity() {
        return quantity;
    }

    public double getPrice() {
        return price;
    }

    public Product getProduct() {
        return product;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public CartItem(int quantity, double price, Product product) {
        this.quantity = quantity;
        this.price = price;
        this.product = product;
    }

    public CartItem() {
    }

    public void upQuantity(int quantity) {
        this.quantity += quantity;
    }
}
