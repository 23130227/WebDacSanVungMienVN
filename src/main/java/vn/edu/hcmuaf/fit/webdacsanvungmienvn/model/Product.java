package vn.edu.hcmuaf.fit.webdacsanvungmienvn.model;

import java.util.Date;

public class Product {
    private int id;
    private String name;
    private double price;
    private int brandId;
    private int categoryId;
    private String specification;
    private int quantity;
    private int soldQuantity;
    private String region;
    private String description;
    private String image;
    private Date createdAt;
    private int discountPercentage;
    private double discountPrice;

    public Product() {
    }

    public Product(int id, String name, double price, int brandId, int categoryId,
                   String specification, int quantity, int soldQuantity, String region,
                   String description, String image, Date createdAt) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.brandId = brandId;
        this.categoryId = categoryId;
        this.specification = specification;
        this.quantity = quantity;
        this.soldQuantity = soldQuantity;
        this.region = region;
        this.description = description;
        this.image = image;
        this.createdAt = createdAt;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getBrandId() {
        return brandId;
    }

    public void setBrandId(int brandId) {
        this.brandId = brandId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getSpecification() {
        return specification;
    }

    public void setSpecification(String specification) {
        this.specification = specification;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getSoldQuantity() {
        return soldQuantity;
    }

    public void setSoldQuantity(int soldQuantity) {
        this.soldQuantity = soldQuantity;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public int getDiscountPercentage() {
        return discountPercentage;
    }

    public void setDiscountPercentage(int discountPercentage) {
        this.discountPercentage = discountPercentage;
    }

    public double getDiscountPrice() {
        return discountPrice;
    }

    public void setDiscountPrice(double discountPrice) {
        this.discountPrice = discountPrice;
    }

    public String getFormattedPrice(double price) {
        java.text.NumberFormat formatter = java.text.NumberFormat.getInstance(new java.util.Locale("vi", "VN"));
        return formatter.format(price);
    }
}
