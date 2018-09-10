package com.company.website.controller;

import com.company.website.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * author：christopher 2018/8/30
 */



@Controller
@RequestMapping("/")
public class websiteController {

    @Resource(name = "userService")
    UserService userService;

    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @RequestMapping("/ticket")
    public String ticket() {
        return "ticket";
    }

    @RequestMapping("/elements")
    public String elements() {
        return "elements";
    }

    @RequestMapping("/blog")
    public String blog() {
        return "blog";
    }

    @RequestMapping("/about-us")
    public String aboutus() {
        return "about-us";
    }

    @RequestMapping("/contact")
    public String contact() {
        return "contact";
    }
}