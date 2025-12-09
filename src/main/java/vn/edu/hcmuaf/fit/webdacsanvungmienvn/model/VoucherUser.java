package vn.edu.hcmuaf.fit.webdacsanvungmienvn.model;

public class VoucherUser {
    private int id;
    private int userId;
    private int voucherId;
    private String status;

    public VoucherUser() {
    }

    public VoucherUser(int id, int userId, int voucherId, String status) {
        this.id = id;
        this.userId = userId;
        this.voucherId = voucherId;
        this.status = status;
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

    public int getVoucherId() {
        return voucherId;
    }

    public void setVoucherId(int voucherId) {
        this.voucherId = voucherId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
