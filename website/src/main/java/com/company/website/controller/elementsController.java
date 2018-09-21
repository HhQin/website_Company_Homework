package com.company.website.controller;

import com.company.website.entity.Product;
import com.company.website.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * author：christopher 2018/8/30
 */



@Controller
@RequestMapping("/")
public class elementsController {

    @Resource
    ProductService productService;

    @RequestMapping("/elements")
    public String elements(Model m) {
        List<Product> productList=productService.queryAllProducts();
        m.addAttribute("product",productList);
        return "elements";
    }


}