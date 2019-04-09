package com.company.website.mapper;

import com.company.website.entity.GetInto;
import com.company.website.showClasses.showIndexGetInto;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface GetIntoMapper {
    @Select("select * from getinto")
    List<GetInto> queryAllGetintos();

    @Select("select * from getinto where VIPNumber = #{VIPNumber}")
    List<GetInto> queryGetintosByVIPNumber(@Param(value = "VIPNumber")String VIPNumber);

    @Select("SELECT COUNT(VIPNumber) FROM getinto where GetInTime>=#{BeginTime} and GetInTime<=#{EndTime}")
    Integer queryCustomerNumberByTime(@Param(value = "BeginTime")Long BeginTime,@Param(value = "EndTime")Long EndTime);

    @Insert("insert into getinto (VIPNumber,GetInTime,LessonUse,notes) values(#{VIPNumber},#{GetInTime},#{LessonUse},#{notes})")
    Boolean createNewGetinto(@Param(value = "VIPNumber")String VIPNumber,@Param(value = "GetInTime")Long GetInTime, @Param(value = "LessonUse")Integer LessonUse,@Param(value = "notes")String notes);

    @Select("SELECT VIPNumber,COUNT(*) as getIntoNumber FROM getinto where GetInTime>=#{BeginTime} and GetInTime<=#{EndTime} GROUP BY VIPNumber ORDER BY COUNT(*) DESC")
    List<showIndexGetInto> queryGetIntoNumberDesc(@Param(value = "BeginTime")Long BeginTime,@Param(value = "EndTime")Long EndTime);
}
