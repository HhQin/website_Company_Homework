package com.company.website.service;

public interface EmployeesService {
    String queryNameByNumber(String UserNum);
    String queryPassword(String LogName);
    Integer queryBusyTeacherNumber();
}
