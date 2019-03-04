package com.company.website.service;

import com.company.website.entity.customers;

import java.util.List;

public interface CustomerService {
    Integer queryAllCustomerNumber();
    List<customers> queryCustomersByTeacherNumber(String TeacherNumber);
}
