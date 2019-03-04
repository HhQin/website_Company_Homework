package com.company.website.mapper;

import com.company.website.entity.lessons;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface LessonsMapper {

    @Select("select * from lessons")
    List<lessons> queryAllLessons();

    @Insert("insert into lessons (LessonNumber,Day,Time,LessonName,TeacherNum) values(#{LessonNumber},#{Day},#{Time},#{LessonName},#{TeacherNum})")
    Boolean createNewLessons(@Param(value = "LessonNumber")String LessonNumber,@Param(value = "Day")String Day,@Param(value = "Time")String Time, @Param(value = "LessonName")String LessonName,@Param(value = "TeacherNum")String TeacherNum);

    @Delete("delete from lessons where LessonNumber=#{LessonNumber}")
    Boolean deleteLessonByNumber(@Param(value = "LessonNumber")String LessonNumber);

    @Select("select * from lessons where LessonNumber=#{LessonNumber}")
    List<lessons> queryLessonByNumber(@Param(value = "LessonNumber")String LessonNumber);

    @Update("Update lessons set LessonName=#{lessonName},Day=#{day},Time=#{time},TeacherNum=#{teacherNum} where LessonNumber=#{lessonNumber}")
    Boolean updateLessonByNumber(@Param(value ="lessonNumber" )String lessonNumber,@Param(value = "lessonName")String lessonName,
                                 @Param(value = "day")String day,@Param(value = "time")String time,@Param(value = "teacherNum")String teacherNum);

    @Select("select * from lessons where TeacherNum=#{TeacherNum}")
    List<lessons> queryLessonsByTeacherNumber(@Param(value = "TeacherNum")String TeacherNum);
}
