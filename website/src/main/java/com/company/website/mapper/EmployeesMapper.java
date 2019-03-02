package com.company.website.mapper;

import com.company.website.entity.employees;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;


public interface EmployeesMapper {

    @Select("select RealName from employees where UserNum=#{UserNum}")
    String queryNameByNumber(@Param(value = "UserNum")String UserNum);

    @Select("select Password from employees where LogName=#{LogName}")
    String queryPassword(@Param(value = "LogName")String LogName);

    @Select("select count(UserNum) from employees where Status='在场'")
    Integer queryBusyTeacherNumber();

    @Select("select * from employees where Job='私教'")
    List<employees> queryAllTeachers();
}
