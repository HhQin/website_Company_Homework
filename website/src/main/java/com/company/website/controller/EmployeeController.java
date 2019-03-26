package com.company.website.controller;

import com.company.website.service.EmployeesService;
import com.company.website.service.LessonsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/")
public class EmployeeController {


    @Resource
    EmployeesService employeesService;

    @RequestMapping("/employeeManagement-employeeAdd")
    public String lessonAdd(Model m){
        return "employees_add";
    }

    @RequestMapping(value = "/employeeManagement-employeeAdd-check",method = RequestMethod.POST)
    public String lessonAddCheck(String name,String logname,String psw1,String sex,String birthday,String job,String telephone,String email){
        Date now = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");//可以方便地修改日期格式
        String nowtime = dateFormat.format(now);
        String EMPNumber="EMP." +String.valueOf(nowtime.substring(2,4))
                +String.valueOf(nowtime.substring(5,7))
                +String.valueOf(System.currentTimeMillis()).substring(9);
        try{
            employeesService.createNewEmployee(EMPNumber,logname,psw1,name,sex,birthday,job,"--",telephone,email);
            return "operate_success";
        }catch (Exception e){
            return "operate_failed";
        }
    }


}
