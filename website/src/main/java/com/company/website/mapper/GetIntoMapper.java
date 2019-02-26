package com.company.website.mapper;

import com.company.website.entity.GetInto;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface GetIntoMapper {
    @Select("select * from getinto")
    List<GetInto> queryAllGetintos();

    @Select("SELECT COUNT(VIPNumber) FROM getinto where GetInTime>=#{BeginTime} and GetInTime<=#{EndTime}")
    Integer queryCustomerNumberByTime(@Param(value = "BeginTime")Long BeginTime,@Param(value = "EndTime")Long EndTime);

}
