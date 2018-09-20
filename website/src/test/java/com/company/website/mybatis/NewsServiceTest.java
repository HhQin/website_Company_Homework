package com.company.website.mybatis;

import com.company.website.entity.News;
import com.company.website.entity.User;
import com.company.website.service.NewsService;
import com.company.website.service.ProductService;
import com.company.website.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class NewsServiceTest {


    @Resource(name = "newsService")
    NewsService newsService;

    @Resource
    ProductService productService;

    @Test
    public void testQueryAllNews() {
        List<News> news=newsService.queryAllNews();
        System.out.println(news.size());
    }

    @Test
    public void testCreateNewNews(){
        try{
            newsService.createNewNews("test1","A simple Introduce","This is a particularIntroduce");
            System.out.println("Insert Failed.");
        }catch (Exception e){
            System.out.println("Insert Success.");
        }
    }

    @Test
    public void testDeleteAllProducts(){
        productService.deleteAllProduct();
    }
}

