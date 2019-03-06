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
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
}
