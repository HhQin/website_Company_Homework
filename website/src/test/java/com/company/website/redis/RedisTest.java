package com.company.website.redis;

import org.junit.Test;
import org.junit.runner.RunWith;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@SpringBootTest
@RunWith(SpringJUnit4ClassRunner.class)
public class RedisTest {

    @Autowired
    private RedisService redisService;

    @Test
    public void setDataTest(){
        System.out.println(redisService.set("001","002"));
    }


    @Test
    public void getDataTest(){
        System.out.println(redisService.get("001"));
    }
}
