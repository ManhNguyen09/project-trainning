package com.javaweb.service.impl;

import com.javaweb.entity.StudentEntity;
import com.javaweb.entity.UserEntity;
import com.javaweb.enums.className;
import com.javaweb.model.dto.AssignmentDTO;
import com.javaweb.model.dto.StudentDTO;
import com.javaweb.model.request.StudentSearchRequest;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.model.response.StaffResponseDTO;
import com.javaweb.repository.StudentRepository;
import com.javaweb.repository.UserRepository;
import com.javaweb.service.IStudentService;
import com.javaweb.utils.UploadFileUtils;
import org.apache.tomcat.util.codec.binary.Base64;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.acls.model.NotFoundException;
import org.springframework.stereotype.Service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

@Service
public class StudentService implements IStudentService {

    @Autowired
    private StudentRepository studentRepository;

    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private UploadFileUtils uploadFileUtils;

    @Autowired
    private UserRepository userRepository;
    @Override
    public List<StudentDTO> findAll(StudentSearchRequest studentSearchRequest) {
        List<StudentEntity> entityList = studentRepository.findAll(studentSearchRequest);
        List<StudentDTO> result = new ArrayList<>();
        for(StudentEntity it : entityList){
            StudentDTO studentDTO = modelMapper.map(it,StudentDTO.class);
            studentDTO.setLop(className.getClassName().get(studentDTO.getLop()));
            result.add(studentDTO);
        }
        return result;
    }

    @Override
    public String addOrUpdateStudent(StudentDTO studentDTO) {
        StudentEntity studentEntity = modelMapper.map(studentDTO,StudentEntity.class);
        studentEntity.setStatus(1L);
        Long studentId = studentDTO.getId();
        if (studentId != null)
        {
            StudentEntity student = studentRepository.findById(studentId)
                    .orElseThrow(() -> new NotFoundException("Building not found!"));
            student.setStaffs(student.getStaffs());
            student.setImage(student.getImage());
        }
        saveThumbnail(studentDTO, studentEntity);
        try{
            studentRepository.save(studentEntity);
        }
        catch (Exception ex){
            return new String("Cập nhật không thành công!");
        }
        return new String("Sinh viên được thêm thành công!");
    }

    @Override
    public void DeleteStudent(Long[] ids) {
        for(Long id : ids){
            StudentEntity student = studentRepository.findById(id).get();
            student.setStatus(0L);
            UserEntity user = userRepository.findOneByUserNameAndStatus(student.getUserName(),1);
            user.setStatus(0);
            studentRepository.save(student);
            userRepository.save(user);
        }
    }

    @Override
    public ResponseDTO loadStaffs(Long studentId) {
        StudentEntity studentEntity = studentRepository.findById(studentId)
                .orElseThrow(() -> new NotFoundException("Student not found!"));
        List<UserEntity> staffs = userRepository.findByStatusAndRoles_Code(1, "TEACHER");
        List<UserEntity> staffsAssignment = studentEntity.getStaffs();
        List<StaffResponseDTO> staffResponseDTOS = new ArrayList<>();
        ResponseDTO responseDTO = new ResponseDTO();
        for (UserEntity it: staffs) {
            StaffResponseDTO staffResponseDTO = new StaffResponseDTO();
            staffResponseDTO.setStaffId(it.getId());
            staffResponseDTO.setFullName(it.getFullName());
            staffResponseDTO.setUserName(it.getUserName());
            if(staffsAssignment.contains(it)) {
                staffResponseDTO.setChecked("checked");
            } else {
                staffResponseDTO.setChecked("");
            }
            staffResponseDTOS.add(staffResponseDTO);
        }
        responseDTO.setData(staffResponseDTOS);
        responseDTO.setMessage("Success");
        return responseDTO;
    }

    @Override
    public void updateAssignment(AssignmentDTO assignmentBuildingDTO) {
        List<StudentEntity> studentEntities = studentRepository.findByIdIn(assignmentBuildingDTO.getId());
        List<UserEntity> staffs = userRepository.findByIdIn(assignmentBuildingDTO.getStaffs());
        for(StudentEntity it : studentEntities) {
            it.setStaffs(staffs);
            studentRepository.save(it);
        }
    }

    private void saveThumbnail(StudentDTO studentDTO, StudentEntity studentEntity)
    {
        String path = "/student/" + studentDTO.getImageName();
        if (null != studentDTO.getImageBase64())
        {
            if (null != studentEntity.getImage())
            {
                if (!path.equals(studentEntity.getImage()))
                {
                    File file = new File("C://home/office" + studentEntity.getImage());
                    file.delete();
                }
            }
            byte[] bytes = Base64.decodeBase64(studentDTO.getImageBase64().getBytes());
            uploadFileUtils.writeOrUpdate(path, bytes);
            studentEntity.setImage(path);
        }
    }
}
