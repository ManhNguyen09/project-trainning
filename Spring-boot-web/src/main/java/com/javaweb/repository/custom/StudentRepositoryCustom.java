package com.javaweb.repository.custom;

import com.javaweb.entity.StudentEntity;
import com.javaweb.model.request.StudentSearchRequest;

import java.util.ArrayList;
import java.util.List;

public interface StudentRepositoryCustom {

    List<StudentEntity> findAll(StudentSearchRequest studentSearchRequest);
}
