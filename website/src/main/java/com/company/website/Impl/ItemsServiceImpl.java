package com.company.website.Impl;

import com.company.website.service.ItemsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("ItemsServiceService")
public class ItemsServiceImpl implements ItemsService {

    @Resource
    ItemsService itemsService;

    @Override
    public Integer queryBrokenItemNumber(){
        return itemsService.queryBrokenItemNumber();
    }
}
