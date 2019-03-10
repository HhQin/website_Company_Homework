package com.company.website.controller;

import com.company.website.entity.customers;
import com.company.website.service.CustomerService;
import com.company.website.service.EmployeesService;
import com.company.website.service.GetIntoService;
import com.company.website.showClasses.showCustomer;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/")
public class CustomerController {

    @Resource
    CustomerService customerService;

    @Resource
    EmployeesService employeesService;

    @Resource
    GetIntoService getIntoService;

    @RequestMapping("/get_into_before")
    public String getIntoBefore(Model m){
        List<showCustomer> resultCustomer = new ArrayList<>();
        List<customers> queryCustomer = customerService.queryAllCustomers();
        for(customers customer:queryCustomer){
            int lastDayNumber = (int)((customer.getEndDate()-System.currentTimeMillis())/86400000);
            if(lastDayNumber<=0)
                continue;
            showCustomer tempShowCustomer = new showCustomer();
            tempShowCustomer.setVIPNumber(customer.getVIPNumber());
            tempShowCustomer.setRealName(customer.getRealName());
            tempShowCustomer.setSex(customer.getSex());
            tempShowCustomer.setBirthday(customer.getBirthday());
            long time1 = customer.getStartDate();
            String begintTime = new SimpleDateFormat("yyyy年MM月dd日").format(time1);
            tempShowCustomer.setBeginDay(begintTime);
            tempShowCustomer.setLastDays(lastDayNumber);
            tempShowCustomer.setLessonNumber(customer.getLessonNumber());
            tempShowCustomer.setTeacherName(employeesService.queryNameByNumber(customer.getTeacherNumber()));
            resultCustomer.add(tempShowCustomer);
        }
        m.addAttribute("resultCustomer",resultCustomer);
        return "get_into_before";
    }

    @RequestMapping("/get_into_register-{VIPNumber}")
    public String get_into_register(@PathVariable String VIPNumber, Model m){
        customers resultCustomer = customerService.queryCustomerByVIPNumber(VIPNumber);
        m.addAttribute("resultCustomer",resultCustomer);
        return "get_into_register";
    }

    @RequestMapping(value = "/getIntoRegisterCheck",method = RequestMethod.POST)
    public String getIntoRegister_Check(String VIPNumber,Integer lessonUse,String notes){
        if(lessonUse<0)
            return "operate_failed";
        try{
            customerService.useLessonByVIPNumber(lessonUse,VIPNumber);
            System.out.println("\n\n\n\n\n成功1"+VIPNumber+System.currentTimeMillis()+lessonUse+notes);
            getIntoService.createNewGetinto(VIPNumber,System.currentTimeMillis(),lessonUse,notes);
            System.out.println("\n\n\n\n\n成功2");
            return "operate_success";
        }catch (Exception e){
            return "operate_failed";
        }
    }

    @RequestMapping("/VIPManagement_VIPAdd")
    public String VIP_Add(Model m){
        m.addAttribute("teachers",employeesService.queryAllTeachers());
        return "VIPCard_new";
    }

    @RequestMapping(value = "/VIPManagement_VIP_add_check",method = RequestMethod.POST)
    public String VIP_Add_Check(String name,String sex,String birthday,String identity,String endDate,Integer lessonNumber,String teacher,String telephone,String email)throws ParseException {
        Date now = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");//可以方便地修改日期格式
        String nowtime = dateFormat.format(now);
        String VIPNumber="VIP." +String.valueOf(nowtime.substring(2,4))
                +String.valueOf(nowtime.substring(5,7))
                +String.valueOf(System.currentTimeMillis()).substring(9);
        Long startDate = System.currentTimeMillis();
        Long endTime = dateFormat.parse(endDate).getTime();
        try{
            customerService.createNewCustomer(VIPNumber,name,sex,birthday,startDate,endTime,lessonNumber,teacher,telephone,email,identity);
            return "operate_success";
        }catch (Exception e){
            return "operate_failed";
        }
    }

    @RequestMapping("/VIPManagement_Old_VIP")
    public String Old_VIP(Model m){
        m.addAttribute("VIPResult",customerService.queryAllCustomers());
        return "VIPCard_old";
    }

    @RequestMapping("/VIPManagement_Old_VIP_{VIPNumber}")
    public String Old_VIP2(@PathVariable String VIPNumber,Model m){
        m.addAttribute("VIPResult",customerService.queryCustomerByVIPNumber(VIPNumber));
        long EndDate = customerService.queryCustomerByVIPNumber(VIPNumber).getEndDate();
        String resultTime = new SimpleDateFormat("yyyy-MM-dd").format(EndDate);
        m.addAttribute("resultTime",resultTime);
        return "VIPCard_old1";
    }

    @RequestMapping(value = "/VIPManagement_Old_VIP_Check",method = RequestMethod.POST)
    public String Old_VIP_check(String VIPNumber,String name,String endDate,Integer lesson) throws ParseException{
        try{
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Long time = sdf.parse(endDate).getTime();
            customerService.oldVIPUpdate(lesson,time,VIPNumber);
            return "operate_success";
        }catch (Exception e){
            return "operate_failed";
        }
    }

    @RequestMapping("/CustomerManagement")
    public String customerManagement(Model m){
        List<showCustomer> resultCustomer = new ArrayList<>();
        List<customers> queryCustomer = customerService.queryAllCustomers();
        for(customers customer:queryCustomer){
            showCustomer tempShowCustomer = new showCustomer();
            tempShowCustomer.setVIPNumber(customer.getVIPNumber());
            tempShowCustomer.setRealName(customer.getRealName());
            tempShowCustomer.setSex(customer.getSex());
            tempShowCustomer.setBirthday(customer.getBirthday());
            long time1 = customer.getStartDate();
            String begintTime = new SimpleDateFormat("yyyy年MM月dd日").format(time1);
            tempShowCustomer.setBeginDay(begintTime);
            int lastDayNumber = (int)((customer.getEndDate()-System.currentTimeMillis())/86400000);
            tempShowCustomer.setLastDays(lastDayNumber);
            tempShowCustomer.setLessonNumber(customer.getLessonNumber());
            tempShowCustomer.setTeacherName(employeesService.queryNameByNumber(customer.getTeacherNumber()));
            resultCustomer.add(tempShowCustomer);
        }
        m.addAttribute("resultCustomer",resultCustomer);
        return "Customer_management";
    }

    @RequestMapping("/customersManagement-customerDeleteCheck-{VIPNumber}")
    public String customerDeleteCheck(@PathVariable String VIPNumber){
        try{
            customerService.deleteCustomerByVIPNumber(VIPNumber);
            return "operate_success";
        }catch (Exception e){
            return "operate_failed";
        }
    }

    @RequestMapping("/customersManagement-customerModify-{VIPNumber}")
    public String customerModify(@PathVariable String VIPNumber,Model m){
        m.addAttribute("teachers",employeesService.queryAllTeachers());
        m.addAttribute("customer",customerService.queryCustomerByVIPNumber(VIPNumber));
        return "customer_modify";
    }

    @RequestMapping(value = "/customersManagement-customerModify-check",method = RequestMethod.POST)
    public String customerModifyCheck(String VIPNumber,String name,String sex,String birthday,String identity,String teacher,String telephone,String email){
        try{
            customerService.customerUpdate(VIPNumber,name,sex,birthday,teacher,telephone,email,identity);
            return "operate_success";
        }catch (Exception e){
            return "operate_failed";
        }
    }
}
