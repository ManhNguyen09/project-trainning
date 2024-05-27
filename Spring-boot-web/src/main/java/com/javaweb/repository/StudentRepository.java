package com.javaweb.repository;

import com.javaweb.entity.RoleEntity;
import com.javaweb.entity.StudentEntity;
import com.javaweb.entity.UserEntity;
import com.javaweb.repository.custom.StudentRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface StudentRepository extends JpaRepository<StudentEntity,Long>, StudentRepositoryCustom {
    List<StudentEntity> findByIdIn(List<Long> id);
    StudentEntity findByUserName(String userName);

}
