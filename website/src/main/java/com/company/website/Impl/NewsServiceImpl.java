package com.company.website.Impl;

import com.company.website.entity.News;
import com.company.website.mapper.NewsMapper;
import com.company.website.service.NewsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("newsService")
public class NewsServiceImpl implements NewsService {

    @Resource
    private NewsMapper newsMapper;

    @Override
    public List<News> queryAllNews(){
        return newsMapper.queryAllNews();
    }

    @Override
    public int createNewNews(String title,String simpleIntroduce,String particularIntroduce){
        return newsMapper.createNewNews("testTitle","testSimpleIntroduce","testParticularIntroduce");
    }

}
