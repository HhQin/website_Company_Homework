package com.company.website.service;


import com.company.website.entity.items;

import java.util.List;

public interface ItemsService {
    Integer queryBrokenItemNumber();
    Boolean createNewItems(String ItemNumber, String ItemName, String ItemStatus);
    List<items> queryAllItems();
}
