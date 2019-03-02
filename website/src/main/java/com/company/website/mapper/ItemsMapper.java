package com.company.website.mapper;

import com.company.website.entity.items;
import com.sun.org.apache.xpath.internal.operations.Bool;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface ItemsMapper {

    @Select("select count(*) from items where ItemStatus='故障'")
    Integer queryBrokenItemNumber();

    @Insert("insert into items values(#{ItemNumber},#{ItemName},#{ItemStatus})")
    Boolean createNewItems(@Param(value = "ItemNumber")String ItemNumber,@Param(value = "ItemName")String ItemName,@Param(value = "ItemStatus")String ItemStatus);

    @Select("select * from items")
    List<items> queryAllItems();

    @Delete("delete from items where ItemNumber=#{ItemNumber}")
    Boolean deleteItemByNumber(@Param(value = "ItemNumber")String ItemNumber);

    @Select("select * from items where ItemNumber=#{ItemNumber}")
    List<items> queryItemByNumber(@Param(value = "ItemNumber")String ItemNumber);

    @Update("UPDATE items SET ItemName = #{ItemName},ItemStatus = #{ItemStatus} WHERE ItemNumber = #{ItemNumber}")
    Boolean updateItemByNumber(@Param(value = "ItemNumber")String ItemNumber,@Param(value = "ItemName")String ItemName,@Param(value = "ItemStatus")String ItemStatus);
}
