package com.company.website.mapper;

import com.company.website.entity.customers;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CustomersMapper {

    @Select("select count(*) from customers")
    Integer queryAllCustomerNumber();

    @Select("select * from customers where TeacherNumber=#{TeacherNumber}")
    List<customers> queryCustomersByNumber(@Param(value = "TeacherNumber")String TeacherNumber);
}
