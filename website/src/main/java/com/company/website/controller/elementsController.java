package com.company.website.controller;

import com.company.website.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * author：christopher 2018/8/30
 */



@Controller
@RequestMapping("/")
public class elementsController {

    @Resource(name = "userService")
    UserService userService;

    @RequestMapping("/elements")
    public String elements() {
        return "elements";
    }


}