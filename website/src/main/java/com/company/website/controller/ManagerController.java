package com.company.website.controller;

import com.company.website.entity.GetInto;
import com.company.website.service.CustomerService;
import com.company.website.service.GetIntoService;
import com.company.website.showClasses.showGetInto;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/")
public class ManagerController {

    @Resource
    GetIntoService getIntoService;

    @Resource
    CustomerService customerService;


    @RequestMapping("/getIntoQuery")
    public String getIntoQuery(Model m){
        List<showGetInto> resultGetInto = new ArrayList<>();
        for(GetInto getInto : getIntoService.queryAllGetintos()){
            showGetInto resultshow = new showGetInto();
            resultshow.setVIPNumber(getInto.getVIPNumber());
            resultshow.setLessonUse(getInto.getLessonUse());
            long time = getInto.getGetInTime();
            String resultTime = new SimpleDateFormat("yyyy年MM月dd日").format(time);
            resultshow.setGetInTime(resultTime);
            resultshow.setVIPName(customerService.queryNameByNumber(getInto.getVIPNumber()));
            resultshow.setNotes(getInto.getNotes());
            resultGetInto.add(resultshow);
        }
        m.addAttribute("resultGetInto",resultGetInto);
        return "get_into_query";
    }
}
