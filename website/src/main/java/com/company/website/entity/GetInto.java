package com.company.website.entity;

public class GetInto {
    String VIPNumber;
    Long GetInTime;
    Integer LessonUse;
    String Notes;

    public String getNotes() {
        return Notes;
    }

    public void setNotes(String notes) {
        Notes = notes;
    }

    public String getVIPNumber() {
        return VIPNumber;
    }

    public void setVIPNumber(String VIPNumber) {
        this.VIPNumber = VIPNumber;
    }

    public Long getGetInTime() {
        return GetInTime;
    }

    public void setGetInTime(Long getInTime) {
        GetInTime = getInTime;
    }

    public Integer getLessonUse() {
        return LessonUse;
    }

    public void setLessonUse(Integer lessonUse) {
        LessonUse = lessonUse;
    }
}
