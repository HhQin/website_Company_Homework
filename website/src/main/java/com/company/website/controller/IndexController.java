package com.company.website.controller;

import com.company.website.entity.employees;
import com.company.website.entity.lessons;
import com.company.website.service.*;
import com.company.website.showClasses.showLessons;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * author：christopher 2019/2/15
 */

@Controller
@RequestMapping("/")
public class IndexController {
    @Resource
    EmployeesService employeesService;

    @Resource
    LessonsService lessonsService;

    @Resource
    GetIntoService getIntoService;

    @Resource
    ItemsService itemsService;

    @Resource
    CustomerService customerService;

    @RequestMapping("/index")
    public String index(Model m) {
        List<showLessons> resultlessons=new ArrayList<>();
        for(lessons lesson:lessonsService.queryAllLessons()){
            showLessons showlesson=new showLessons();
            showlesson.setTime(lesson.getTime());
            showlesson.setLessonName(lesson.getLessonName());
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy年MM月dd日");
            showlesson.setDay(sdf.format(new Date(lesson.getDay())));
            showlesson.setTeacherName(employeesService.queryNameByNumber(lesson.getTeacherNum()));
            resultlessons.add(showlesson);
        }
        m.addAttribute("resultlessons",resultlessons);
        return "index";
    }

    @RequestMapping("/login")
    public String login(Model m){
        return "login";
    }

    @RequestMapping(value = "/logincheck",method = RequestMethod.POST)
    public String logincheck(employees employee, HttpServletResponse response) throws Exception{
        if(employeesService.queryPassword(employee.getLogName())!=null
                && employeesService.queryPassword(employee.getLogName()).equals(employee.getPassword())){
            response.sendRedirect("/homepage");
            return "login";
        }else {
            return "login";
        }
    }

    @RequestMapping(value = "/homepage")
    public String homepage(Model m){

            List<showLessons> resultlessons=new ArrayList<>();
            for(lessons lesson:lessonsService.queryAllLessons()){
                showLessons showlesson=new showLessons();
                showlesson.setTime(lesson.getTime());
                showlesson.setLessonName(lesson.getLessonName());
                showlesson.setDay(lesson.getDay());
                showlesson.setTeacherName(employeesService.queryNameByNumber(lesson.getTeacherNum()));
                resultlessons.add(showlesson);
            }
            m.addAttribute("resultlessons",resultlessons);

            Long tempBeginTime = System.currentTimeMillis()-(System.currentTimeMillis()%86400000);
            Long tempEndTime = tempBeginTime+86400000;
            m.addAttribute("todayCustomerNumber",getIntoService.queryCustomerNumberByTime(tempBeginTime,tempEndTime));
            m.addAttribute("teacherNumber",employeesService.queryBusyTeacherNumber());
            m.addAttribute("brokenItemNumber",itemsService.queryBrokenItemNumber());
            m.addAttribute("allCustomerNumber",customerService.queryAllCustomerNumber());
            return "homepage";

    }

    @RequestMapping(value = "/customerQueryResult",method = RequestMethod.GET)
    public String customerQueryResult(Model m,String VIPNumber){
        System.out.println("\n\n\n\n\n\n\n"+VIPNumber+"\n\n\n\n\n\n");
        return "query_result";
    }

    @RequestMapping("operate_success")
    public String operateSuccess(){
        return "operate_success";
    }
}