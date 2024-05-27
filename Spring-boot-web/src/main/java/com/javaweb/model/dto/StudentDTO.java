package com.javaweb.model.dto;


import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class StudentDTO extends AbstractDTO{
    private String maSV;
    private String ten;
    private String ngaySinh;
    private String diaChi;
    private String lop;
    private Double gpa;
    private String userName;
    private String image;
    private String imageBase64;
    private String imageName;

    public String getImageBase64() {
        if (imageBase64 != null) {
            return imageBase64.split(",")[1];
        }
        return null;
    }
}
