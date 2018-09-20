package com.company.website.entity;

public class Professor {

    Integer id;
    String professorName;
    String professorIntroduce;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProfessorName() {
        return professorName;
    }

    public void setProfessorName(String professorName) {
        this.professorName = professorName;
    }

    public String getProfessorIntroduce() {
        return professorIntroduce;
    }

    public void setProfessorIntroduce(String professorIntroduce) {
        this.professorIntroduce = professorIntroduce;
    }
}
