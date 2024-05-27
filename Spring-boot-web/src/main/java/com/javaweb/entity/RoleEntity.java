package com.javaweb.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
@Table(name = "role")
public class RoleEntity extends BaseEntity {


    @Column(name="name")
    private String name;

    @Column(name="code")
    private String code;

    @ManyToMany(mappedBy = "roles", fetch = FetchType.LAZY)
    private List<UserEntity> user = new ArrayList<>();

}
