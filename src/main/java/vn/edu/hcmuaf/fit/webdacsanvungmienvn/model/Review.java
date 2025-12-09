package vn.edu.hcmuaf.fit.webdacsanvungmienvn.model;

import java.util.Date;

public class Review {
    private int id;
    private int productId;
    private int userId;
    private String content;
    private int rating;
    private Date createdAt;

    public Review() {}

    public Review(int id, int productId, int userId, String content, int rating, Date createdAt) {
        this.id = id;
        this.productId = productId;
        this.userId = userId;
        this.content = content;
        this.rating = rating;
        this.createdAt = createdAt;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public int getProductId() { return productId; }
    public void setProductId(int productId) { this.productId = productId; }

    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }

    public String getContent() { return content; }
    public void setContent(String content) { this.content = content; }

    public int getRating() { return rating; }
    public void setRating(int rating) { this.rating = rating; }

    public Date getCreatedAt() { return createdAt; }
    public void setCreatedAt(Date createdAt) { this.createdAt = createdAt; }
}

