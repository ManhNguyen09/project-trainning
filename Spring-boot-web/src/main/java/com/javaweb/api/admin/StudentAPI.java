package com.javaweb.api.admin;


import com.javaweb.model.dto.AssignmentDTO;
import com.javaweb.model.dto.StudentDTO;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.service.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/students")
public class StudentAPI {
    @Autowired
    private IStudentService studentService;
    @PostMapping
    public String addOrUpdate(@RequestBody StudentDTO studentDTO){
        return studentService.addOrUpdateStudent(studentDTO);
    }

    @DeleteMapping(value="/{ids}")
    public void DeleteCustomer(@PathVariable Long[] ids){
        studentService.DeleteStudent(ids);
    }

    @GetMapping("/{id}/staffs")
    public ResponseEntity<?> loadStaffs(@PathVariable Long id) {
        ResponseDTO result = new ResponseDTO();
        try {
            result = studentService.loadStaffs(id);
            return ResponseEntity.ok(result);
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(e.getMessage());
        }
    }
    @PostMapping ("/staffs")
    public ResponseEntity<?> aupdateAssignment(@RequestBody AssignmentDTO assignmentStudentDTO) {
        try {
            studentService.updateAssignment(assignmentStudentDTO);
            return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(e.getMessage());
        }
    }
}
