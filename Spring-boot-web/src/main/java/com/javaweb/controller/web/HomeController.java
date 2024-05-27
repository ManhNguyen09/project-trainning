package com.javaweb.controller.web;

import com.javaweb.entity.StudentEntity;
import com.javaweb.enums.className;
import com.javaweb.model.dto.StudentDTO;
import com.javaweb.model.request.StudentSearchRequest;
import com.javaweb.repository.StudentRepository;
import com.javaweb.utils.DistrictCode;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller(value = "homeControllerOfWeb")
public class HomeController {

    @Autowired
    private StudentRepository studentRepository;

    @Autowired
    private ModelMapper modelMapper;

	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage(StudentSearchRequest buildingSearchRequest, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("web/home");
        mav.addObject("modelSearch", buildingSearchRequest);
        mav.addObject("districts", DistrictCode.type());
		return mav;
	}

    @GetMapping(value="/gioi-thieu")
    public ModelAndView introducceBuiding(){
        ModelAndView mav = new ModelAndView("web/introduce");
        return mav;
    }

    @GetMapping(value="/san-pham")
    public ModelAndView buidingList(){
        ModelAndView mav = new ModelAndView("/web/list");
        return mav;
    }

    @GetMapping(value="/tin-tuc")
    public ModelAndView news(){
        ModelAndView mav = new ModelAndView("/web/news");
        return mav;
    }

    @GetMapping(value="/lien-he")
    public ModelAndView contact(){
        ModelAndView mav = new ModelAndView("/web/contact");
        return mav;
    }

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}

	@RequestMapping(value = "/access-denied", method = RequestMethod.GET)
	public ModelAndView accessDenied() {
		return new ModelAndView("redirect:/login?accessDenied");
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return new ModelAndView("redirect:/trang-chu");
	}


    @GetMapping("/info-{userName}")
    public ModelAndView info(@PathVariable(name = "userName")String userName){
        ModelAndView mav = new ModelAndView("admin/student/info");
        StudentEntity studentEntity = studentRepository.findByUserName(userName);
        StudentDTO studentDTO = modelMapper.map(studentEntity,StudentDTO.class);
        studentDTO.setLop(className.getClassName().get(studentEntity.getLop()));
        mav.addObject("studentEdit",studentDTO);
        return mav;
    }
}
