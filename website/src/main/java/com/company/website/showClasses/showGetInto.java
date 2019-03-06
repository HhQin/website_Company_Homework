package com.company.website.showClasses;

public class showGetInto {
    String VIPNumber;
    String VIPName;
    String GetInTime;
    Integer LessonUse;
    String Notes;

    public String getNotes() {
        return Notes;
    }

    public void setNotes(String notes) {
        Notes = notes;
    }

    public String getVIPName() {
        return VIPName;
    }

    public void setVIPName(String VIPName) {
        this.VIPName = VIPName;
    }


    public String getVIPNumber() {
        return VIPNumber;
    }

    public void setVIPNumber(String VIPNumber) {
        this.VIPNumber = VIPNumber;
    }

    public String getGetInTime() {
        return GetInTime;
    }

    public void setGetInTime(String getInTime) {
        GetInTime = getInTime;
    }

    public Integer getLessonUse() {
        return LessonUse;
    }

    public void setLessonUse(Integer lessonUse) {
        LessonUse = lessonUse;
    }
}
