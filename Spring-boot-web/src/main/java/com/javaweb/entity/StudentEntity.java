package com.javaweb.entity;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "sinhvien")
@Getter
@Setter
public class StudentEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    @Column(name = "mssv",nullable = false, unique = true)
    private String maSV;


    @Column(name = "ten", nullable = false)
    private String ten;

    @Column(name = "ngaysinh", nullable = false)
    private String ngaySinh;

    @Column(name = "diachi", nullable = false)
    private String diaChi;

    @Column(name = "lop", nullable = false)
    private String lop;

    @Column(name = "gpa", nullable = false)
    private Double gpa;

    @Column(name = "username", nullable = false)
    private String userName;

    @Column(name = "avatar")
    private String image;

    @Column(name = "status", nullable = false)
    private Long status;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "assignmentstudent",
            joinColumns = @JoinColumn(name = "studentid", nullable = false),
            inverseJoinColumns = @JoinColumn(name = "staffid", nullable = false))
    private List<UserEntity> staffs = new ArrayList<>();

}
