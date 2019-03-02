package com.company.website.controller;

import com.company.website.service.ItemsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

@Controller
@RequestMapping("/")
public class ItemController {
    @Resource
    ItemsService itemsService;

    @RequestMapping("/itemManagement-itemAdd")
    public String itemAdd() {
        return "items_add";
    }

    @RequestMapping(value = "/itemManagement-itemAddCheck", method = RequestMethod.POST)
    public String itemAddCheck(String name, String selector1) throws Exception {
        try {
            System.out.println("\n\n\n\n\n\n\n" + String.valueOf(System.currentTimeMillis()).substring(7) + "\n\n\n\n\n\n");
            String itemNumber = "ITEM19" + String.valueOf(System.currentTimeMillis()).substring(7);
            itemsService.createNewItems(itemNumber, name, selector1);
        } catch (Exception e) {
            return "operate_failed";
        }
        return "operate_success";
    }

    @RequestMapping("/itemManagement")
    public String itemManagement(Model m){
        m.addAttribute("resultitems",itemsService.queryAllItems());
        return "items_management";
    }

    @RequestMapping(value = "/itemManagement-itemDeleteCheck-{itemNumber}")
    public String itemDelete(@PathVariable String itemNumber) throws Exception{
        try{
            itemsService.deleteItemByNumber(itemNumber);
            return "operate_success";
        }catch (Exception e){
            return "operate_failed";
        }
    }

    @RequestMapping("/itemManagement-itemModify-{itemNumber}")
    public String itemModify(@PathVariable String itemNumber,Model m) throws Exception{
        try{
            m.addAttribute("item",itemsService.queryItemByNumber(itemNumber));
            return "items_modify";
        }catch (Exception e){
            return "operate_failed";
        }
    }

    @RequestMapping(value = "/itemManagement-itemModifyCheck",method = RequestMethod.POST)
    public String itemModifyCheck(String itemNumber,String itemName,String selector1) throws Exception{
        try{
            itemsService.updateItemByNumber(itemNumber,itemName,selector1);
            return "operate_success";
        }catch (Exception e){
            return "operate_failed";
        }
    }

}

