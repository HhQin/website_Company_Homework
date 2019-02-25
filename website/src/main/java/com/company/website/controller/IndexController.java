package com.company.website.controller;

import com.company.website.entity.lessons;
import com.company.website.service.EmployeesService;
import com.company.website.service.LessonsService;
import com.company.website.showClasses.showLessons;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * author：christopher 2018/8/30
 */

@Controller
@RequestMapping("/")
public class IndexController {
    @Resource
    EmployeesService employeesService;

    @Resource
    LessonsService lessonsService;

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

}