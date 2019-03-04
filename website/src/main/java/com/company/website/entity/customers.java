package com.company.website.entity;

public class customers {
    String VIPNumber;
    String RealName;
    String Sex;
    Integer Age;
    Long StartDate;
    Long EndDate;
    Integer LessonNumber;
    String TeacherNumber;
    String Telephone;
    String Email;

    public String getTelephone() {
        return Telephone;
    }

    public void setTelephone(String telephone) {
        Telephone = telephone;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getVIPNumber() {
        return VIPNumber;
    }

    public void setVIPNumber(String VIPNumber) {
        this.VIPNumber = VIPNumber;
    }

    public String getRealName() {
        return RealName;
    }

    public void setRealName(String realName) {
        RealName = realName;
    }

    public String getSex() {
        return Sex;
    }

    public void setSex(String sex) {
        Sex = sex;
    }

    public Integer getAge() {
        return Age;
    }

    public void setAge(Integer age) {
        Age = age;
    }

    public Long getStartDate() {
        return StartDate;
    }

    public void setStartDate(Long startDate) {
        StartDate = startDate;
    }

    public Long getEndDate() {
        return EndDate;
    }

    public void setEndDate(Long endDate) {
        EndDate = endDate;
    }

    public Integer getLessonNumber() {
        return LessonNumber;
    }

    public void setLessonNumber(Integer lessonNumber) {
        LessonNumber = lessonNumber;
    }

    public String getTeacherNumber() {
        return TeacherNumber;
    }

    public void setTeacherNumber(String teacherNumber) {
        TeacherNumber = teacherNumber;
    }
}
