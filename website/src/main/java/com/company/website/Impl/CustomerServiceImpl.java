package com.company.website.Impl;

import com.company.website.entity.customers;
import com.company.website.mapper.CustomersMapper;
import com.company.website.service.CustomerService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("CustomerService")
public class CustomerServiceImpl implements CustomerService {

    @Resource
    private CustomersMapper customersMapper;

    @Override
    public List<customers> queryAllCustomers(){
        return customersMapper.queryAllCustomers();
    }

    @Override
    public customers queryCustomerByVIPNumber(String VIPNumber){
        return customersMapper.queryCustomerByVIPNumber(VIPNumber);
    }

    @Override
    public Integer queryAllCustomerNumber(){
        return customersMapper.queryAllCustomerNumber();
    }

    @Override
    public List<customers> queryCustomersByTeacherNumber(String TeacherNumber){
        return customersMapper.queryCustomersByNumber(TeacherNumber);
    }

    @Override
    public String queryNameByNumber(String VIPNumber){
        return customersMapper.queryNameByNumber(VIPNumber);
    }

    @Override
    public Boolean useLessonByVIPNumber(int useNumber,String VIPNumber){
        return customersMapper.useLessonByVIPNumber(useNumber,VIPNumber);
    }

    @Override
    public Boolean createNewCustomer(String VIPNumber,String RealName, String Sex,String Birthday, Long StartDate,Long EndDate, String LessonNumber,String TeacherNumber, String Telephone,String Eamil){
        return customersMapper.createNewCustomer(VIPNumber,RealName,Sex,Birthday,StartDate,EndDate,LessonNumber,TeacherNumber,Telephone,Eamil);
    }
}
