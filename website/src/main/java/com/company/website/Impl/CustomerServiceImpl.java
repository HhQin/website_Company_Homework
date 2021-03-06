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
    public Boolean createNewCustomer(String VIPNumber,String RealName, String Sex,String Birthday, Long StartDate,Long EndDate, Integer LessonNumber,String TeacherNumber, String Telephone,String Email,String Identity){
        return customersMapper.createNewCustomer(VIPNumber,RealName,Sex,Birthday,StartDate,EndDate,LessonNumber,TeacherNumber,Telephone,Email,Identity);
    }

    @Override
    public Boolean oldVIPUpdate(Integer useNumber,Long EndDate,String VIPNumber){
        return customersMapper.oldVIPUpdate(useNumber,EndDate,VIPNumber);
    }

    @Override
    public Boolean deleteCustomerByVIPNumber(String VIPNumber){
        return customersMapper.deleteCustomerByVIPNumber(VIPNumber);
    }

    @Override
    public Boolean customerUpdate(String VIPNumber,String RealName,String Sex,String Birthday,String TeacherNumber,String Telephone,String Email,String Identity){
        return customersMapper.customerUpdate(VIPNumber,RealName,Sex,Birthday,TeacherNumber,Telephone,Email,Identity);
    }
}
