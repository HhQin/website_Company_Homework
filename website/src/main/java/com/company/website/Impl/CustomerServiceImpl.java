package com.company.website.Impl;

import com.company.website.mapper.CustomersMapper;
import com.company.website.service.CustomerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("CustomerService")
public class CustomerServiceImpl implements CustomerService {

    @Resource
    private CustomersMapper customersMapper;

    @Override
    public Integer queryAllCustomerNumber(){
        return customersMapper.queryAllCustomerNumber();
    }
}
