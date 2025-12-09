package vn.edu.hcmuaf.fit.webdacsanvungmienvn.model;

import java.util.Date;

public class CategoryDiscount {
    private int id;
    private int categoryId;
    private int discountPercentage;
    private Date startDate;
    private Date endDate;

    public CategoryDiscount() {
    }

    public CategoryDiscount(int id, int categoryId, int discountPercentage, Date startDate, Date endDate) {
        this.id = id;
        this.categoryId = categoryId;
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

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
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
