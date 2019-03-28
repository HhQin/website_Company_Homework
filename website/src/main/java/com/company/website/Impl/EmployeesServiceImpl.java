package com.company.website.Impl;

import com.company.website.entity.employees;
import com.company.website.mapper.EmployeesMapper;
import com.company.website.service.EmployeesService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("EmployeesService")
public class EmployeesServiceImpl implements EmployeesService {

    @Resource
    private EmployeesMapper employeesMapper;

    @Override
    public List<employees> queryAllEmployees(){
        return employeesMapper.queryAllEmployees();
    }

    @Override
    public employees queryEmployeeByNumber(String UserNum){
        return employeesMapper.queryEmployeeByNumber(UserNum);
    }

    @Override
    public Boolean updateEmployeeByNumber(String Telephone,String Password,String Sex,String Email,String UserNum){
        return employeesMapper.updateEmployeeByNumber(Telephone,Password,Sex,Email,UserNum);
    }

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

    @Override
    public Boolean createNewEmployee(String UserNum,String LogName, String Password,String RealName,String Sex,String Birthday,String Job,String Status,String Telephone,String Email){
        return employeesMapper.createNewEmployee(UserNum,LogName,Password,RealName,Sex,Birthday,Job,Status,Telephone,Email);
    }

    @Override
    public Boolean deleteEmployeeByNumber(String UserNum){
        return employeesMapper.deleteEmployeeByNumber(UserNum);
    }
}
