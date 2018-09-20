package com.company.website.Impl;

import com.company.website.entity.Product;
import com.company.website.mapper.ProductMapper;
import com.company.website.service.ProductService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("productService")
public class ProductServiceImpl implements ProductService {

    @Resource
    private ProductMapper productMapper;

    @Override
    public List<Product> queryAllProducts(){
        return productMapper.queryAllProducts();
    }

    @Override
    public int createNewProduct(String productName,String productIntroduce){
        return productMapper.createNewProduct(productName,productIntroduce);
    }

    @Override
    public int deleteAllProduct(){
        return productMapper.deleteAllProducts();
    }
}
