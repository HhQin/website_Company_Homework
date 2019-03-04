package com.company.website.Impl;

import com.company.website.entity.employees;
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

    @Override
    public String queryPassword(String LogName){
        return employeesMapper.queryPassword(LogName);
    }

    @Override
    public Integer queryBusyTeacherNumber(){
        return employeesMapper.queryBusyTeacherNumber();
    }

    @Override
    public List<employees> queryAllTeachers(){
        return employeesMapper.queryAllTeachers();
    }

    @Override
    public List<employees> queryEmployeeByLogName(String LogName){
        return employeesMapper.queryEmployeeByLogName(LogName);
    }

    @Override
    public Boolean updateStatusByUserNum(String Status,String UserNum){
        return employeesMapper.updateStatusByUserNum(Status,UserNum);
    }
}
