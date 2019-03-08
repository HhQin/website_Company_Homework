package com.company.website.mapper;

import com.company.website.entity.customers;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface CustomersMapper {

    @Select("select * from customers")
    List<customers> queryAllCustomers();

    @Select("select * from customers where VIPNumber=#{VIPNumber}")
    customers queryCustomerByVIPNumber(@Param(value = "VIPNumber")String VIPNumber);

    @Select("select count(*) from customers")
    Integer queryAllCustomerNumber();

    @Select("select * from customers where TeacherNumber=#{TeacherNumber}")
    List<customers> queryCustomersByNumber(@Param(value = "TeacherNumber")String TeacherNumber);

    @Select("select RealName from customers where VIPNumber=#{VIPNumber}")
    String queryNameByNumber(@Param(value = "VIPNumber")String VIPNumber);

    @Update("update customers set LessonNumber=LessonNumber-#{useNumber} where VIPNumber=#{VIPNumber}")
    Boolean useLessonByVIPNumber(@Param(value = "useNumber")int useNumber,@Param(value = "VIPNumber")String VIPNumber);

    @Insert("insert into customers (VIPNumber,RealName,Sex,Birthday,StartDate,EndDate,LessonNumber,TeacherNumber,Telephone,Email,Identity) values (#{VIPNumber},#{RealName},#{Sex},#{Birthday},#{StartDate},#{EndDate},#{LessonNumber},#{TeacherNumber},#{Telephone},#{Email},#{Identity})")
    Boolean createNewCustomer(@Param(value = "VIPNumber")String VIPNumber,@Param(value = "RealName")String RealName, @Param(value = "Sex")String Sex,@Param(value = "Birthday")String Birthday, @Param(value = "StartDate")Long StartDate,@Param(value = "EndDate")Long EndDate, @Param(value = "LessonNumber")Integer LessonNumber,@Param(value = "TeacherNumber")String TeacherNumber, @Param(value = "Telephone")String Telephone,@Param(value = "Email")String Email,@Param(value = "Identity")String Identity);

    @Update("update customers set LessonNumber=LessonNumber+#{useNumber},EndDate=#{EndDate} where VIPNumber=#{VIPNumber}")
    Boolean oldVIPUpdate(@Param(value = "useNumber")Integer useNumber,@Param(value = "EndDate")Long EndDate,@Param(value = "VIPNumber")String VIPNumber);
}
