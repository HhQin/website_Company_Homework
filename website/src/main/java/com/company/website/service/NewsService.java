package com.company.website.service;

import com.company.website.entity.News;

import java.util.List;

public interface NewsService {

    List<News> queryAllNews();

    int createNewNews(String title,String simpleIntroduce,String particularIntroduce);

}
