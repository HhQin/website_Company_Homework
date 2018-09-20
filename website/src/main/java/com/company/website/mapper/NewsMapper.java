package com.company.website.mapper;

import com.company.website.entity.News;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface NewsMapper {

    @Select("select * from t_news")
    List<News> queryAllNews();

    @Insert("insert into t_news(title,simpleIntroduce,particularIntroduce) values (#{title},#{simpleIntroduce},#{particularIntroduce})")
    int createNewNews(@Param(value = "title")String title,@Param(value = "simpleIntroduce")String simpleIntroduce,@Param(value = "particularIntroduce")String particularIntroduce);


}
