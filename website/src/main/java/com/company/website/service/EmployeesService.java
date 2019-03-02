package com.company.website.service;

import com.company.website.entity.employees;

import java.util.List;

public interface EmployeesService {
    String queryNameByNumber(String UserNum);
    String queryPassword(String LogName);
    Integer queryBusyTeacherNumber();
    List<employees> queryAllTeachers();
}
