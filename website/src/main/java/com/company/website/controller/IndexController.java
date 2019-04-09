package com.company.website.controller;

import com.company.website.entity.GetInto;
import com.company.website.entity.customers;
import com.company.website.entity.employees;
import com.company.website.entity.lessons;
import com.company.website.service.*;
import com.company.website.showClasses.showCustomer;
import com.company.website.showClasses.showGetInto;
import com.company.website.showClasses.showIndexGetInto;
import com.company.website.showClasses.showLessons;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Enumeration;
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
            showlesson.setDay(lesson.getDay());
            showlesson.setTeacherName(employeesService.queryNameByNumber(lesson.getTeacherNum()));
            resultlessons.add(showlesson);
        }
        m.addAttribute("resultlessons",resultlessons);

        Long tempBeginTime = System.currentTimeMillis()-(System.currentTimeMillis()%86400000);
        Long tempEndTime = tempBeginTime+86400000;
        List<showIndexGetInto> resultGetIntoRank = getIntoService.queryGetIntoNumberDesc(tempBeginTime,tempEndTime);
        for(int i=0;i<resultGetIntoRank.size();i++){
            resultGetIntoRank.get(i).setTrueName(customerService.queryNameByNumber(resultGetIntoRank.get(i).getVIPNumber()));
        }
        if(resultGetIntoRank.size()>5){
            resultGetIntoRank.subList(0, 5);
        }
        m.addAttribute("resultGetIntoRank",resultGetIntoRank);
        return "index";
    }

    @RequestMapping("/login")
    public String login(Model m){
        return "login";
    }

    @RequestMapping(value = "/logincheck",method = RequestMethod.POST)
    public String logincheck(employees employee, HttpServletRequest request, HttpServletResponse response) throws Exception{
        if(employeesService.queryPassword(employee.getLogName())!=null
                && employeesService.queryPassword(employee.getLogName()).equals(employee.getPassword())){
            HttpSession sessoin=request.getSession();//这就是session的创建
            employees queryEmployee = employeesService.queryEmployeeByLogName(employee.getLogName()).get(0);
            sessoin.setAttribute("number",queryEmployee.getUserNum());
            sessoin.setAttribute("name",queryEmployee.getRealName());
            sessoin.setAttribute("job",queryEmployee.getJob());
            sessoin.setAttribute("logname",queryEmployee.getLogName());
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

    @RequestMapping(value = "/customerQueryResult",method = RequestMethod.POST)
    public String customerQueryResult(Model m,String VIPNumber){
        customers tempCustomer = customerService.queryCustomerByVIPNumber(VIPNumber);
        showCustomer resultCustomer = new showCustomer();
        resultCustomer.setVIPNumber(tempCustomer.getVIPNumber());
        resultCustomer.setRealName(tempCustomer.getRealName());
        resultCustomer.setSex(tempCustomer.getSex());
        resultCustomer.setBirthday(tempCustomer.getBirthday());
        resultCustomer.setLastDays((int)((tempCustomer.getEndDate()-System.currentTimeMillis())/86400000));
        resultCustomer.setLessonNumber(tempCustomer.getLessonNumber());
        List<GetInto> tempGetInto = getIntoService.queryGetintosByVIPNumber(VIPNumber);
        List<showGetInto> resultGetInto = new ArrayList<>();
        for(GetInto getInto : tempGetInto){
            showGetInto tempShowGetInto = new showGetInto();
            tempShowGetInto.setLessonUse(getInto.getLessonUse());
            tempShowGetInto.setNotes(getInto.getNotes());
            long time = getInto.getGetInTime();
            String resultTime = new SimpleDateFormat("yyyy年MM月dd日").format(time);
            tempShowGetInto.setGetInTime(resultTime);
            resultGetInto.add(tempShowGetInto);
        }
        m.addAttribute("resultCustomer",resultCustomer);
        m.addAttribute("resultGetInto",resultGetInto);
        return "query_result";
    }

    @RequestMapping("/operate_success")
    public String operateSuccess(){
        return "operate_success";
    }

    @RequestMapping("/auth_failed")
    public String authFailed(){
        return "auth_failed";
    }

    @RequestMapping("/logout")
    public String logout(HttpServletRequest request,HttpServletResponse response) throws Exception{
        try{
            Enumeration em = request.getSession().getAttributeNames();
            while(em.hasMoreElements()){
                request.getSession().removeAttribute(em.nextElement().toString());
            }
            response.sendRedirect("/login");
            return "login";
        }catch (Exception e){
            return "operate_failed";
        }

    }
}