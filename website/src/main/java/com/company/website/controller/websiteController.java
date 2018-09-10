package com.company.website.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * author：christopher 2018/8/30
 */

@Controller
@RequestMapping("/")
public class websiteController {

    @RequestMapping("/hello")
    public String index() {
        return "index";
    }
}