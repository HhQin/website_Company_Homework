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
public class contactController {

    @Resource(name = "userService")
    UserService userService;

    @RequestMapping("/contact")
    public String contact() {
        return "contact";
    }
}