package com.company.website.Impl;

import com.company.website.entity.customers;
import com.company.website.mapper.CustomersMapper;
import com.company.website.service.CustomerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("CustomerService")
public class CustomerServiceImpl implements CustomerService {

    @Resource
    private CustomersMapper customersMapper;

    @Override
    public Integer queryAllCustomerNumber(){
        return customersMapper.queryAllCustomerNumber();
    }

    @Override
    public List<customers> queryCustomersByNumber(String TeacherNumber){
        return customersMapper.queryCustomersByNumber(TeacherNumber);
    }
}
