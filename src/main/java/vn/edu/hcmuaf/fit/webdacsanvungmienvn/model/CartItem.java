package vn.edu.hcmuaf.fit.webdacsanvungmienvn.model;

public class CartItem {
    private int id;
    private int cartId;
    private int productId;
    private int productQuantity;

    public CartItem() {
    }

    public CartItem(int id, int cartId, int productId, int productQuantity) {
        this.id = id;
        this.cartId = cartId;
        this.productId = productId;
        this.productQuantity = productQuantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getProductQuantity() {
        return productQuantity;
    }

    public void setProductQuantity(int productQuantity) {
        this.productQuantity = productQuantity;
    }
}
