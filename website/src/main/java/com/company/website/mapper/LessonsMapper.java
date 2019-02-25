package com.company.website.mapper;

import com.company.website.entity.lessons;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface LessonsMapper {

    @Select("select * from lessons")
    List<lessons> queryAllLessons();

}
