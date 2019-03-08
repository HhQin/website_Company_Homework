package com.company.website.mybatis;

import com.company.website.entity.GetInto;
import com.company.website.service.CustomerService;
import com.company.website.service.EmployeesService;
import com.company.website.service.GetIntoService;

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
        try {
            customerService.createNewCustomer("VIP.12345678", "DAIJIBA", "妖", "1997-01-02", 1552025176000L, 1552025376000L, 21, "emp.19000001", "18861812785", "405903618@qq.com","公司家人");
            System.out.println("\n\n\n\n\n\n\n\n\n\n成功！");
        }catch (Exception e){
            System.out.println("\n\n\n\n\n\n\n\n\n\n失败！");
        }
        }


}

