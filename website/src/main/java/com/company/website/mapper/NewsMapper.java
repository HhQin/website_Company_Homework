package com.company.website.mapper;

import com.company.website.entity.News;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface NewsMapper {

    @Select("select * from t_news")
    List<News> queryAllNews();

    @Select("select * from t_news where title=#{title}")
    List<News> queryNewsByTitle(@Param(value = "title")String title);

    @Insert("insert into t_news(title,simpleIntroduce,particularIntroduce) values (#{title},#{simpleIntroduce},#{particularIntroduce})")
    int createNewNews(@Param(value = "title")String title,@Param(value = "simpleIntroduce")String simpleIntroduce,@Param(value = "particularIntroduce")String particularIntroduce);

    @Delete("delete * from t_news")
    int deleteAllNews();

    @Delete("delete * from t_news where title=#{title}")
    int deleteNewsByTitle(@Param(value = "title")String title);

    @Update("UPDATE t_news SET (simpleIntroduce = #{simpleIntroduce},particularIntroduce = #{particularIntroduce}) WHERE title = #{title}")
    int updateNewsByTitle(@Param(value = "title")String title,@Param(value = "simpleIntroduce")String simpleIntroduce,@Param(value = "particularIntroduce")String particularIntroduce);
}
