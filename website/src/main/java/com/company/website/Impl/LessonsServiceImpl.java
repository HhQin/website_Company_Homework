package com.company.website.Impl;

import com.company.website.entity.lessons;
import com.company.website.mapper.LessonsMapper;
import com.company.website.service.LessonsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("LessonsService")
public class LessonsServiceImpl implements LessonsService {
    @Resource
    private LessonsMapper lessonsMapper;

    @Override
    public List<lessons> queryAllLessons(){
        return lessonsMapper.queryAllLessons();
    }

    @Override
    public Boolean createNewLessons(String LessonNumber,String Day,String Time, String LessonName, String TeacherNum){
        return lessonsMapper.createNewLessons(LessonNumber,Day,Time,LessonName,TeacherNum);
    }

    @Override
    public Boolean deleteLessonByNumber(String LessonNumber){
        return lessonsMapper.deleteLessonByNumber(LessonNumber);
    }

    @Override
    public List<lessons> queryLessonByNumber(String LessonNumber){
        return lessonsMapper.queryLessonByNumber(LessonNumber);
    }

    @Override
    public Boolean updateLessonByNumber(String lessonNumber,String lessonName, String day,String time,String teacherNum){
        return lessonsMapper.updateLessonByNumber(lessonNumber,lessonName,day,time,teacherNum);
    }

    @Override
    public List<lessons> queryLessonsByTeacherNumber(String TeacherNum){
        return lessonsMapper.queryLessonsByTeacherNumber(TeacherNum);
    }
}
