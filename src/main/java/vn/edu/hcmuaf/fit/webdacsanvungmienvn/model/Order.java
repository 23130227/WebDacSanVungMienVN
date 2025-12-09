package vn.edu.hcmuaf.fit.webdacsanvungmienvn.model;

import java.util.Date;

public class Order {
    private int id;
    private int userId;
    private String status;
    private String paymentMethod;
    private int discountPercentage;
    private String fullName;
    private String phoneNumber;
    private String address;
    private Date date;
    private String note;

    public Order() {
    }

    public Order(int id, int userId, String status, String paymentMethod, int discountPercentage,
                 String fullName, String phoneNumber, String address, Date date, String note) {
        this.id = id;
        this.userId = userId;
        this.status = status;
        this.paymentMethod = paymentMethod;
        this.discountPercentage = discountPercentage;
        this.fullName = fullName;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.date = date;
        this.note = note;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public int getDiscountPercentage() {
        return discountPercentage;
    }

    public void setDiscountPercentage(int discountPercentage) {
        this.discountPercentage = discountPercentage;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
