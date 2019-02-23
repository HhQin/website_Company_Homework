package com.company.website.entity;

public class lessons {
    String LessonNumber;
    Long Day;
    String Time;
    String LessonName;
    String TeacherNum;

    public String getLessonNumber() {
        return LessonNumber;
    }

    public void setLessonNumber(String lessonNumber) {
        LessonNumber = lessonNumber;
    }

    public Long getDay() {
        return Day;
    }

    public void setDay(Long day) {
        Day = day;
    }

    public String getTime() {
        return Time;
    }

    public void setTime(String time) {
        Time = time;
    }

    public String getLessonName() {
        return LessonName;
    }

    public void setLessonName(String lessonName) {
        LessonName = lessonName;
    }

    public String getTeacherNum() {
        return TeacherNum;
    }

    public void setTeacherNum(String teacherNum) {
        TeacherNum = teacherNum;
    }
}
