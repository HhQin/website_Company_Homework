package com.company.website.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.text.DateFormat;
import java.util.Date;


/**
 * author：christopher 2017/8/30
 */
@Controller
@EnableAutoConfiguration
public class websiteController {


    @RequestMapping("/hello")
    public String hello(Model m){
        m.addAttribute("now",DateFormat.getDateTimeInstance().format(new Date()));
        return "hello";
    }


}