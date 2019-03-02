package com.company.website.service;


import com.company.website.entity.items;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ItemsService {
    Integer queryBrokenItemNumber();
    Boolean createNewItems(String ItemNumber, String ItemName, String ItemStatus);
    List<items> queryAllItems();
    Boolean deleteItemByNumber(String ItemNumber);
    List<items> queryItemByNumber(String ItemNumber);
    Boolean updateItemByNumber(String ItemNumber,String ItemName,String ItemStatus);

}
