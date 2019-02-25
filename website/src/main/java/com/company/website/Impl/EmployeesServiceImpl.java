package com.company.website.Impl;

import com.company.website.mapper.EmployeesMapper;
import com.company.website.service.EmployeesService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("EmployeesService")
public class EmployeesServiceImpl implements EmployeesService {

    @Resource
    private EmployeesMapper employeesMapper;

    @Override
    public String queryNameByNumber(String UserNum){
        return employeesMapper.queryNameByNumber(UserNum);
    }
}
