package vn.edu.hcmuaf.fit.webdacsanvungmienvn.service;

import vn.edu.hcmuaf.fit.webdacsanvungmienvn.dao.ShippingInfoDAO;
import vn.edu.hcmuaf.fit.webdacsanvungmienvn.model.ShippingInfo;

import java.util.List;

public class ShippingInfoService {
    private final ShippingInfoDAO shippingInfoDAO = new ShippingInfoDAO();

    public void addShippingInfo(int userId, String receiverName, String receiverPhoneNumber, String province,
                                String district, String ward, String detailedAddress) {
        if (receiverName == null || receiverName.trim().isEmpty()) {
            throw new IllegalArgumentException("Tên người nhận không được để trống");
        }
        if (receiverPhoneNumber == null || receiverPhoneNumber.trim().isEmpty()) {
            throw new IllegalArgumentException("Số điện thoại người nhận không được để trống");
        }
        if (province == null || province.trim().isEmpty()) {
            throw new IllegalArgumentException("Tỉnh/Thành phố không được để trống");
        }
        if (district == null || district.trim().isEmpty()) {
            throw new IllegalArgumentException("Quận/Huyện không được để trống");
        }
        if (ward == null || ward.trim().isEmpty()) {
            throw new IllegalArgumentException("Phường/Xã không được để trống");
        }
        if (detailedAddress == null || detailedAddress.trim().isEmpty()) {
            throw new IllegalArgumentException("Địa chỉ chi tiết không được để trống");
        }
        ShippingInfo shippingInfo = new ShippingInfo();
        shippingInfo.setUserId(userId);
        shippingInfo.setReceiverName(receiverName);
        shippingInfo.setReceiverPhoneNumber(receiverPhoneNumber);
        shippingInfo.setProvince(province);
        shippingInfo.setDistrict(district);
        shippingInfo.setWard(ward);
        shippingInfo.setDetailedAddress(detailedAddress);
        shippingInfoDAO.addShippingInfo(shippingInfo);
    }

    public void deleteShippingInfo(int id) {
        shippingInfoDAO.deleteShippingInfo(id);
    }

    public List<ShippingInfo> getShippingInfosByUserId(int userId) {
        return shippingInfoDAO.getShippingInfosByUserId(userId);
    }

    public void updateShippingInfo(int id, String receiverName, String receiverPhoneNumber, String province,
                                   String district, String ward, String detailedAddress) {
        if (receiverName == null || receiverName.trim().isEmpty()) {
            throw new IllegalArgumentException("Tên người nhận không được để trống");
        }
        if (receiverPhoneNumber == null || receiverPhoneNumber.trim().isEmpty()) {
            throw new IllegalArgumentException("Số điện thoại người nhận không được để trống");
        }
        if (province == null || province.trim().isEmpty()) {
            throw new IllegalArgumentException("Tỉnh/Thành phố không được để trống");
        }
        if (district == null || district.trim().isEmpty()) {
            throw new IllegalArgumentException("Quận/Huyện không được để trống");
        }
        if (ward == null || ward.trim().isEmpty()) {
            throw new IllegalArgumentException("Phường/Xã không được để trống");
        }
        if (detailedAddress == null || detailedAddress.trim().isEmpty()) {
            throw new IllegalArgumentException("Địa chỉ chi tiết không được để trống");
        }
        ShippingInfo shippingInfo = new ShippingInfo();
        shippingInfo.setId(id);
        shippingInfo.setReceiverName(receiverName);
        shippingInfo.setReceiverPhoneNumber(receiverPhoneNumber);
        shippingInfo.setProvince(province);
        shippingInfo.setDistrict(district);
        shippingInfo.setWard(ward);
        shippingInfo.setDetailedAddress(detailedAddress);
        shippingInfoDAO.updateShippingInfo(shippingInfo);
    }
}
