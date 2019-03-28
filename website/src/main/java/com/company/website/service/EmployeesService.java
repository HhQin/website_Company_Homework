package com.company.website.service;

import com.company.website.entity.employees;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmployeesService {
    List<employees> queryAllEmployees();
    employees queryEmployeeByNumber(String UserNum);
    Boolean updateEmployeeByNumber(String Telephone,String Password,String Sex,String Email,String UserNum);
    String queryNameByNumber(String UserNum);
    String queryPassword(String LogName);
    Integer queryBusyTeacherNumber();
    List<employees> queryAllTeachers();
    List<employees> queryEmployeeByLogName(String LogName);
    Boolean updateStatusByUserNum(String Status,String UserNum);
    Boolean createNewEmployee(String UserNum,String LogName, String Password,String RealName,String Sex,String Birthday,String Job,String Status,String Telephone,String Email);
    Boolean deleteEmployeeByNumber(String UserNum);

}
