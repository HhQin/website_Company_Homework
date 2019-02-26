package com.company.website.service;

import com.company.website.entity.GetInto;
import java.util.List;

public interface GetIntoService {
    List<GetInto> queryAllGetintos();
    Integer queryCustomerNumberByTime(Long BeginTime,Long EndTime);
}
