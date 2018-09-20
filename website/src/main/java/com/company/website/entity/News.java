package com.company.website.entity;

public class News {

    Integer id;
    String title;
    String simpleIntroduce;
    String particularIntroduce;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSimpleIntroduce() {
        return simpleIntroduce;
    }

    public void setSimpleIntroduce(String simpleIntroduce) {
        this.simpleIntroduce = simpleIntroduce;
    }

    public String getParticularIntroduce() {
        return particularIntroduce;
    }

    public void setParticularIntroduce(String particularIntroduce) {
        this.particularIntroduce = particularIntroduce;
    }
}
