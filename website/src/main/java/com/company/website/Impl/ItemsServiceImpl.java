package com.company.website.Impl;

import com.company.website.entity.items;
import com.company.website.mapper.ItemsMapper;
import com.company.website.service.ItemsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("ItemsServiceService")
public class ItemsServiceImpl implements ItemsService {

    @Resource
    ItemsMapper itemsMapper;

    @Override
    public Integer queryBrokenItemNumber(){
        return itemsMapper.queryBrokenItemNumber();
    }

    @Override
    public Boolean createNewItems(String ItemNumber, String ItemName, String ItemStatus){
        return itemsMapper.createNewItems(ItemNumber,ItemName,ItemStatus);
    }

    @Override
    public List<items> queryAllItems(){
        return itemsMapper.queryAllItems();
    }
}
