package com.company.website.controller;

import com.company.website.service.EmployeesService;
import com.company.website.service.LessonsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/")
public class TeachersController {

    @Resource
    EmployeesService employeesService;

    @Resource
    LessonsService lessonsService;

    /*@RequestMapping("/studentsInfoQuery")
    public String studentsInfoQuery(HttpServletRequest request, HttpServletResponse response)throws Exception{
        HttpSession sessoin=request.getSession();
        if(sessoin.getAttribute("job")!="私教")
            response.sendRedirect("/auth_failed");
        String userNum=sessoin.getAttribute("number").toString();

    }*/
}
