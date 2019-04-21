package com.company.website;

import com.company.website.interceptor.FrontInterceptor;
import com.company.website.interceptor.LoginInterceptor;
import com.company.website.interceptor.TeacherInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class WebAppConfig extends WebMvcConfigurerAdapter {
    @Override
    public void addInterceptors(InterceptorRegistry registry){
        registry.addInterceptor(new LoginInterceptor()).addPathPatterns("/**").excludePathPatterns(
                "/index","/login","/logincheck","/customerQueryResult",//页面白名单
                "/assets/**","/databases/**","/main/**","/web/**"//资源白名单
        );

        registry.addInterceptor(new FrontInterceptor()).addPathPatterns("/getIntoQuery","/studentsInfoQuery","/teachingLessonsQuery",
                "/teacher_sign_in","/teacher_sign_in_check","/employeeManagement-employeeAdd","/employeeManagement-employeeAdd-check",
                "/employeeManagement","/employeesManagement-employeesModifyCheck");

        registry.addInterceptor(new TeacherInterceptor()).addPathPatterns("/employeeManagement-employeeAdd","/employeeManagement-employeeAdd-check",
                "/employeeManagement","/employeesManagement-employeesModifyCheck","/get_into_before","/get_into_register-**","/getIntoRegisterCheck",
                "/VIPManagement_VIPAdd","/VIPManagement_VIP_add_check","/VIPManagement_Old_VIP","/VIPManagement_Old_VIP_**",
                "/VIPManagement_Old_VIP_Check","/CustomerManagement","/customersManagement-customerDeleteCheck-**",
                "/customersManagement-customerModify-**","/customersManagement-customerModify-check","/itemManagement-itemAdd",
                "/itemManagement-itemAddCheck","/itemManagement","/itemManagement-itemDeleteCheck-**","/itemManagement-itemModify-**",
                "/itemManagement-itemModifyCheck","/lessonManagement-lessonAdd","/lessonManagement-lessonAddCheck","/lessonManagement",
                "/getIntoQuery","/lessonsManagement-lessonDeleteCheck-**");
    }
}