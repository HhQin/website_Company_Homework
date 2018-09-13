package com.company.website.mybatis;

import com.company.website.entity.User;
import com.company.website.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;

@RunWith(SpringRunner.class)
@SpringBootTest
public class UserServiceTest {


    @Resource(name = "userService")
    UserService userService;

    @Test
    public void testFindIdByName() {
        User user = userService.findIdByName("hello");
        System.out.println(user.getId());
    }

    @Test
    public void testCreateNewUser(){
        userService.createNewUser("zhangsan",22);
    }

    @Test
    public void testDeleteUserById(){
        userService.deleteUserById(25);
    }
    @Test
    public void testUpdateUserByName(){
        userService.updateUserByName("Lisi",95);
    }
}
