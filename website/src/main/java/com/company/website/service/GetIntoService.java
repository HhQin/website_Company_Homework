package com.company.website.service;

import com.company.website.entity.GetInto;
import java.util.List;

public interface GetIntoService {
    List<GetInto> queryAllGetintos();
    Integer queryCustomerNumberByTime(Long BeginTime,Long EndTime);
    Boolean createNewGetinto(String VIPNumber,Long GetInTime, Integer LessonUse,String notes);
}
