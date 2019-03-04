package com.company.website.controller;

import com.company.website.service.CustomerService;
import com.company.website.service.EmployeesService;
import com.company.website.service.LessonsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

    @Resource
    CustomerService customerService;

    @RequestMapping("/studentsInfoQuery")
    public String studentsInfoQuery(HttpServletRequest request, Model m)throws Exception{
        HttpSession sessoin=request.getSession();
        String userNum=sessoin.getAttribute("number").toString();
        m.addAttribute("resultStudents",customerService.queryCustomersByTeacherNumber(userNum));
        m.addAttribute("teacherName",sessoin.getAttribute("name").toString());
        return "students_info_query";
    }

    @RequestMapping("/teachingLessonsQuery")
    public String teachingLessonsQuery(HttpServletRequest request, Model m) throws Exception{
        HttpSession sessoin=request.getSession();
        String userNum=sessoin.getAttribute("number").toString();
        m.addAttribute("resultLessons",lessonsService.queryLessonsByTeacherNumber(userNum));
        m.addAttribute("teacherName",sessoin.getAttribute("name").toString());
        return "teaching_lessons_query";
    }

    @RequestMapping("/teacher_sign_in")
    public String teacherSignIn(HttpServletRequest request, Model m)throws Exception{
        HttpSession sessoin=request.getSession();
        m.addAttribute("userNum",sessoin.getAttribute("number").toString());
        m.addAttribute("userName",sessoin.getAttribute("name").toString());
        m.addAttribute("userStatus",employeesService.queryEmployeeByLogName(sessoin.getAttribute("logname").toString()).get(0).getStatus());
        return "teacher_sign_in";
    }

    @RequestMapping(value = "/teacher_sign_in_check",method = RequestMethod.POST)
    public String teacherSignInCheck(HttpServletRequest request,String number){
        HttpSession sessoin=request.getSession();
        String tempStatus = employeesService.queryEmployeeByLogName(sessoin.getAttribute("logname").toString()).get(0).getStatus();
        try{
            if(tempStatus.equals("在场")){
                employeesService.updateStatusByUserNum("休息",number);
            }else{
                employeesService.updateStatusByUserNum("在场",number);
            }
            return "operate_success";
        }catch (Exception e){
            return "operate_failed";
        }
    }
}
