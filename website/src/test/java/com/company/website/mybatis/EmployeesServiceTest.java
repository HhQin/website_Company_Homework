package com.company.website.mybatis;

import com.company.website.service.EmployeesService;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;

@RunWith(SpringRunner.class)
@SpringBootTest
public class EmployeesServiceTest {

    @Resource(name = "EmployeesService")
    EmployeesService employeesService;

    @Test
    public void testQueryNameByNumber(){
        String result=employeesService.queryNameByNumber("emp.19000001");
        System.out.println(result);
    }



}

