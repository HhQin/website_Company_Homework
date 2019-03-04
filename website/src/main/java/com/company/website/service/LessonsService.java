package com.company.website.service;

import com.company.website.entity.lessons;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LessonsService {
    List<lessons> queryAllLessons();
    Boolean createNewLessons(String LessonNumber,String Day,String Time, String LessonName, String TeacherNum);
    Boolean deleteLessonByNumber(String LessonNumber);
    List<lessons> queryLessonByNumber(String LessonNumber);
    Boolean updateLessonByNumber(String lessonNumber,String lessonName, String day,String time,String teacherNum);
    List<lessons> queryLessonsByTeacherNumber(String TeacherNum);
}
