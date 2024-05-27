package com.javaweb.model.request;

import com.javaweb.model.dto.AbstractDTO;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;
import java.util.List;

@Getter
@Setter
public class StudentSearchRequest extends AbstractDTO {
    private String mssv;
    private String ten;
    private String ngaySinh;
    private String diaChi;
    private String lop;
    private Double gpaFrom;
    private Double gpaTo;
    private Long teacherId;
}
