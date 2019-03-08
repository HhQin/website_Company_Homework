package com.company.website.service;

import com.company.website.entity.customers;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CustomerService {
    List<customers> queryAllCustomers();
    customers queryCustomerByVIPNumber(String VIPNumber);
    Integer queryAllCustomerNumber();
    List<customers> queryCustomersByTeacherNumber(String TeacherNumber);
    String queryNameByNumber(String VIPNumber);
    Boolean useLessonByVIPNumber(int useNumber,String VIPNumber);
    Boolean createNewCustomer(String VIPNumber,String RealName, String Sex,String Birthday, Long StartDate,Long EndDate, Integer LessonNumber,String TeacherNumber, String Telephone,String Email,String Identity);
    Boolean oldVIPUpdate(Integer useNumber,Long EndDate,String VIPNumber);
}
