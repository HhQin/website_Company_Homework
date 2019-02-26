package com.company.website.mapper;

import org.apache.ibatis.annotations.Select;

public interface ItemsMapper {

    @Select("select count(*) from items where ItemStatus='故障'")
    Integer queryBrokenItemNumber();
}
