package com.javaweb.controller.admin;



import com.javaweb.constant.SystemConstant;
import com.javaweb.entity.StudentEntity;
import com.javaweb.enums.className;
import com.javaweb.model.dto.AbstractDTO;
import com.javaweb.model.dto.StudentDTO;
import com.javaweb.model.request.StudentSearchRequest;
import com.javaweb.repository.StudentRepository;
import com.javaweb.security.utils.SecurityUtils;
import com.javaweb.service.IStudentService;
import com.javaweb.service.IUserService;
import com.javaweb.utils.DisplayTagUtils;
import com.javaweb.utils.MessageUtils;
import netscape.security.UserTarget;
import org.apache.commons.lang.StringUtils;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller(value="studentControllerOfAdmin")
public class StudentController {

    @Autowired
    private IUserService userService;

    @Autowired
    private IStudentService studentService;

    @Autowired
    private StudentRepository studentRepository;

    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private MessageUtils messageUtil;

    @RequestMapping(value="/admin/student-list", method = RequestMethod.GET)
    public ModelAndView studentList(@ModelAttribute StudentSearchRequest studentSearchRequest, HttpServletRequest request){
        ModelAndView mav = new ModelAndView("admin/student/list");
        mav.addObject("modelSearch",studentSearchRequest);
        mav.addObject("listTeacher",userService.getTeacher());
        mav.addObject("className", className.getClassName());
        if(SecurityUtils.getAuthorities().contains("ROLE_TEACHER")){
            Long staffId = SecurityUtils.getPrincipal().getId();
            studentSearchRequest.setTeacherId(staffId);
            mav.addObject("listStudent",studentService.findAll(studentSearchRequest));
        }
        else{
            mav.addObject("listStudent",studentService.findAll(studentSearchRequest));
        }
        AbstractDTO model = new AbstractDTO();
        DisplayTagUtils.of(request, model);
        model.setTotalItems(studentService.findAll(studentSearchRequest).size());
        mav.addObject(SystemConstant.MODEL, model);
        initMessageResponse(mav, request);
        return mav;
    }
    private void initMessageResponse(ModelAndView mav, HttpServletRequest request) {
        String message = request.getParameter("message");
        if (message != null && StringUtils.isNotEmpty(message)) {
            Map<String, String> messageMap = messageUtil.getMessage(message);
            mav.addObject(SystemConstant.ALERT, messageMap.get(SystemConstant.ALERT));
            mav.addObject(SystemConstant.MESSAGE_RESPONSE, messageMap.get(SystemConstant.MESSAGE_RESPONSE));
        }
    }

    @RequestMapping(value="/admin/student-edit", method = RequestMethod.GET)
    public ModelAndView studentList(@ModelAttribute("studentEdit")StudentDTO studentDTO, HttpServletRequest request){
        ModelAndView mav = new ModelAndView("admin/student/edit");
        mav.addObject("className", className.getClassName());
        mav.addObject("listUser",userService.getStudent());
        return mav;
    }

    @GetMapping(value="/admin/student-edit-{id}")
    public ModelAndView addBuilding(@PathVariable Long id){
        ModelAndView mav = new ModelAndView("admin/student/edit");
        StudentEntity studentEntity = studentRepository.findById(id).get();
        StudentDTO studentDTO = modelMapper.map(studentEntity,StudentDTO.class);
        mav.addObject("studentEdit",studentDTO);
        mav.addObject("className", className.getClassName());
        mav.addObject("listUser",userService.getStudent());
        return mav;
    }
}
