package com.company.website.mapper;

import org.apache.ibatis.annotations.Select;

public interface CustomersMapper {

    @Select("select count(*) from customers")
    Integer queryAllCustomerNumber();
}
