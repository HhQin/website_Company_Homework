package com.company.website.mybatis;

import com.company.website.entity.lessons;
import com.company.website.service.EmployeesService;
import com.company.website.service.LessonsService;
import com.company.website.showClasses.showLessons;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class LessonsServiceTest {
    @Resource(name = "LessonsService")
    LessonsService lessonsService;
    @Resource(name = "EmployeesService")
    EmployeesService employeesService;

    @Test
    public void testQueryAllLessons(){
        System.out.println(lessonsService.queryAllLessons().get(0).getTime());
    }

    @Test
    public void testQueryShowLessons(){
        List<showLessons> result=new ArrayList<>();
        for(lessons lesson:lessonsService.queryAllLessons()){
            showLessons showlesson=new showLessons();
            showlesson.setTime(lesson.getTime());
            showlesson.setLessonName(lesson.getLessonName());
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy年MM月dd日");
            showlesson.setDay(sdf.format(new Date(lesson.getDay())));
            showlesson.setTeacherName(employeesService.queryNameByNumber(lesson.getTeacherNum()));
            result.add(showlesson);
        }
        System.out.println(result.get(0).getDay());
    }
}
