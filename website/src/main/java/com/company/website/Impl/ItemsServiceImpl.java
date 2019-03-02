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

    @Override
    public Boolean deleteItemByNumber(String ItemNumber){
        return itemsMapper.deleteItemByNumber(ItemNumber);
    }

    @Override
    public  List<items> queryItemByNumber(String ItemNumber){
        return itemsMapper.queryItemByNumber(ItemNumber);
    }

    @Override
    public Boolean updateItemByNumber(String ItemNumber,String ItemName,String ItemStatus){
        return itemsMapper.updateItemByNumber(ItemNumber,ItemName,ItemStatus);
    }
}
