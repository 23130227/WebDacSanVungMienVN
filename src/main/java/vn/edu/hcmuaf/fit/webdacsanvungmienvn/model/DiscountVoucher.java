package vn.edu.hcmuaf.fit.webdacsanvungmienvn.model;

import java.util.Date;

public class DiscountVoucher {
    private int id;
    private String name;
    private int discountPercentage;
    private String description;
    private double appliedPrice;
    private int quantity;
    private Date startDate;
    private Date endDate;

    public DiscountVoucher() {
    }

    public DiscountVoucher(int id, String name, int discountPercentage, String description,
                           double appliedPrice, int quantity, Date startDate, Date endDate) {
        this.id = id;
        this.name = name;
        this.discountPercentage = discountPercentage;
        this.description = description;
        this.appliedPrice = appliedPrice;
        this.quantity = quantity;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getDiscountPercentage() {
        return discountPercentage;
    }

    public void setDiscountPercentage(int discountPercentage) {
        this.discountPercentage = discountPercentage;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getAppliedPrice() {
        return appliedPrice;
    }

    public void setAppliedPrice(double appliedPrice) {
        this.appliedPrice = appliedPrice;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
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
