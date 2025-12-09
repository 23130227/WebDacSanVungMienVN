package vn.edu.hcmuaf.fit.webdacsanvungmienvn.model;

import java.util.Date;

public class ProductDiscount {
    private int id;
    private int productId;
    private int discountPercentage;
    private Date startDate;
    private Date endDate;

    public ProductDiscount() {
    }

    public ProductDiscount(int id, int productId, int discountPercentage, Date startDate, Date endDate) {
        this.id = id;
        this.productId = productId;
        this.discountPercentage = discountPercentage;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getDiscountPercentage() {
        return discountPercentage;
    }

    public void setDiscountPercentage(int discountPercentage) {
        this.discountPercentage = discountPercentage;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }
}
