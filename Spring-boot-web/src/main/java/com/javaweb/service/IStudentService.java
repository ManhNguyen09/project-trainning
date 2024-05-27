package com.javaweb.service;

import com.javaweb.model.dto.AssignmentDTO;
import com.javaweb.model.dto.StudentDTO;
import com.javaweb.model.request.StudentSearchRequest;
import com.javaweb.model.response.ResponseDTO;

import java.util.List;

public interface IStudentService {
    List<StudentDTO> findAll(StudentSearchRequest studentSearchRequest);

    String addOrUpdateStudent(StudentDTO studentDTO);

    void DeleteStudent(Long[] ids);

    ResponseDTO loadStaffs(Long studentId);

    void updateAssignment(AssignmentDTO assignmentBuildingDTO);
}
