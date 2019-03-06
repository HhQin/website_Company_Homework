package com.company.website.mapper;

import com.company.website.entity.GetInto;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface GetIntoMapper {
    @Select("select * from getinto")
    List<GetInto> queryAllGetintos();

    @Select("SELECT COUNT(VIPNumber) FROM getinto where GetInTime>=#{BeginTime} and GetInTime<=#{EndTime}")
    Integer queryCustomerNumberByTime(@Param(value = "BeginTime")Long BeginTime,@Param(value = "EndTime")Long EndTime);

    @Insert("insert into getinto (VIPNumber,GetInTime,LessonUse,notes) values(#{VIPNumber},#{GetInTime},#{LessonUse},#{notes})")
    Boolean createNewGetinto(@Param(value = "VIPNumber")String VIPNumber,@Param(value = "GetInTime")Long GetInTime, @Param(value = "LessonUse")Integer LessonUse,@Param(value = "notes")String notes);
}
