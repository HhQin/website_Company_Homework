package com.company.website.mybatis;

import com.company.website.entity.GetInto;
import com.company.website.service.CustomerService;
import com.company.website.service.EmployeesService;
import com.company.website.service.GetIntoService;

import com.company.website.showClasses.showIndexGetInto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class NewsServiceTest {

    @Resource(name = "GetIntoService")
    GetIntoService getIntoService;

    @Resource
    CustomerService customerService;

    @Test
    public void testQueryAllGetintos() {
        List<GetInto> result=getIntoService.queryAllGetintos();
        for(GetInto x:result){
            System.out.println(x.getVIPNumber());
            System.out.println(x.getGetInTime());
            System.out.println(x.getLessonUse());
        }
    }

    @Test
    public void testInsertIntoCustomers(){
        List<showIndexGetInto> resultGetInto = getIntoService.queryGetIntoNumberDesc(1550026171000L,1551926171000L);
        for(showIndexGetInto result:resultGetInto){
            System.out.println(result.getVIPNumber()+"  "+result.getGetIntoNumber());
        }
    }


}

