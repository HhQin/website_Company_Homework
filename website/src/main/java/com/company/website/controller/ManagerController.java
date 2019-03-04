package com.company.website.controller;

import com.company.website.service.GetIntoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/")
public class ManagerController {

    @Resource
    GetIntoService getIntoService;

    @RequestMapping("/getIntoQuery")
    public String getIntoQuery(Model m){

    }
}
