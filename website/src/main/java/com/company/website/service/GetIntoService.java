package com.company.website.service;

import com.company.website.entity.GetInto;
import com.company.website.showClasses.showIndexGetInto;

import java.util.List;

public interface GetIntoService {
    List<GetInto> queryAllGetintos();
    Integer queryCustomerNumberByTime(Long BeginTime,Long EndTime);
    List<GetInto> queryGetintosByVIPNumber(String VIPNumber);
    Boolean createNewGetinto(String VIPNumber,Long GetInTime, Integer LessonUse,String notes);
    List<showIndexGetInto> queryGetIntoNumberDesc(Long BeginTime,Long EndTime);
}
