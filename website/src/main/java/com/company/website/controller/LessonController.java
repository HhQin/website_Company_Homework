package com.company.website.controller;

import com.company.website.service.EmployeesService;
import com.company.website.service.LessonsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

import com.company.website.showClasses.showLessons;
import com.company.website.entity.lessons;
@Controller
@RequestMapping("/")
public class LessonController {

    @Resource
    LessonsService lessonsService;

    @Resource
    EmployeesService employeesService;

    @RequestMapping("/lessonManagement-lessonAdd")
    public String lessonAdd(Model m){
        m.addAttribute("teachers",employeesService.queryAllTeachers());
        return "lessons_add";
    }

    @RequestMapping(value = "/lessonManagement-lessonAddCheck",method = RequestMethod.POST)
    public String lessonAddCheck(String LessonName,String LessonDay,String LessonTime,String TeacherNum)throws Exception{
        String LessonNumber="LESS"+String.valueOf(LessonDay.substring(2,4))
                +String.valueOf(LessonDay.substring(5,7))
                +String.valueOf(System.currentTimeMillis()).substring(9);
        try{
            System.out.println("\n\n\n\n\n\n\n" + LessonNumber+LessonDay+LessonTime+LessonName+TeacherNum + "\n\n\n\n\n\n");
            lessonsService.createNewLessons(LessonNumber,LessonDay,LessonTime,LessonName,TeacherNum);
            return "operate_success";
        }catch (Exception e){
            return "operate_failed";
        }
    }

    @RequestMapping("/lessonManagement")
    public String lessonManagement(Model m){
        List<showLessons> resultlessons=new ArrayList<>();
        for(lessons lesson:lessonsService.queryAllLessons()){
            showLessons showlesson=new showLessons();
            showlesson.setTime(lesson.getTime());
            showlesson.setLessonName(lesson.getLessonName());
            showlesson.setDay(lesson.getDay());
            showlesson.setTeacherName(employeesService.queryNameByNumber(lesson.getTeacherNum()));
            showlesson.setLessonNum(lesson.getLessonNumber());
            resultlessons.add(showlesson);
        }
        m.addAttribute("resultlessons",resultlessons);
        return "lessons_management";
    }

    @RequestMapping("/lessonsManagement-lessonDeleteCheck-{lessonNumber}")
    public String lessonDeleteCheck(@PathVariable String lessonNumber) {
        try{
            lessonsService.deleteLessonByNumber(lessonNumber);
            return "operate_success";
        }catch (Exception e){
            return "operate_failed";
        }
    }

    @RequestMapping("/lessonsManagement-lessonModify-{lessonNumber}")
    public String lessonModify(@PathVariable String lessonNumber,Model m){
        m.addAttribute("lesson",lessonsService.queryLessonByNumber(lessonNumber));
        m.addAttribute("teachers",employeesService.queryAllTeachers());
        return "lessons_modify";
    }

    @RequestMapping(value = "/lessonsManagement-lessonModifyCheck",method = RequestMethod.POST)
    public String lessonModifyCheck(String lessonNumber,String lessonName,String day,String lessonTime,String lessonTeacher){
        try{
            lessonsService.updateLessonByNumber(lessonNumber,lessonName,day,lessonTime,lessonTeacher);
            return "operate_success";
        }catch (Exception e){
            return "operate_failed";
        }
    }
}
