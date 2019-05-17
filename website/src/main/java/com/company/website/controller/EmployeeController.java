package com.company.website.controller;

import com.company.website.entity.employees;
import com.company.website.service.EmployeesService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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
    public String employeeAddCheck(String name,String logname,String psw1,String sex,String birthday,String job,String telephone,String email){
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

    @RequestMapping("/employeeManagement")
    public String employeeManagement(Model m){
        List<employees> resultEmployees = employeesService.queryAllEmployees();
        m.addAttribute("resultEmployees",resultEmployees);
        return "employees_management";
    }

    @RequestMapping("/employeesManagement-employeesDeleteCheck-{employeeNumber}")
    public String employeesDeleteCheck(@PathVariable String employeeNumber){
        try{
            employeesService.deleteEmployeeByNumber(employeeNumber);
            return "operate_success";
        }catch (Exception e){
            return "operate_failed";
        }
    }

    @RequestMapping("/employeesManagement-employeesModify-{employeeNumber}")
    public String employeesModify(@PathVariable String employeeNumber,Model m, HttpServletRequest request){
        try{
            m.addAttribute("resultEmployee",employeesService.queryEmployeeByNumber(employeeNumber));
            HttpSession sessoin=request.getSession();
            m.addAttribute("job",sessoin.getAttribute("job"));
            return "employee_modify";
        }catch (Exception e){
            return "operate_failed";
        }
    }

    @RequestMapping(value = "/employeesManagement-employeesModifyCheck",method = RequestMethod.POST)
    public String employeesModifyCheck(String userNumber,String sex,String password1,String telephone,String email){
        try{
            employeesService.updateEmployeeByNumber(telephone,password1,sex,email,userNumber);
            return "operate_success";
        }catch (Exception e){
            return "operate_failed";
        }
    }

}
