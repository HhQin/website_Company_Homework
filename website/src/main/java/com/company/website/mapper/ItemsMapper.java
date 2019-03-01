package com.company.website.mapper;

import com.company.website.entity.items;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ItemsMapper {

    @Select("select count(*) from items where ItemStatus='故障'")
    Integer queryBrokenItemNumber();

    @Insert("insert into items values(#{ItemNumber},#{ItemName},#{ItemStatus})")
    Boolean createNewItems(@Param(value = "ItemNumber")String ItemNumber,@Param(value = "ItemName")String ItemName,@Param(value = "ItemStatus")String ItemStatus);

    @Select("select * from items")
    List<items> queryAllItems();
}
