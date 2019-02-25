package com.company.website.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;


public interface EmployeesMapper {

    @Select("select RealName from employees where UserNum=#{UserNum}")
    String queryNameByNumber(@Param(value = "UserNum")String UserNum);
}
