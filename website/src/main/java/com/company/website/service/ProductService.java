package com.company.website.service;

import com.company.website.entity.Product;
import org.apache.ibatis.annotations.Insert;

import java.util.List;

public interface ProductService {

    List<Product> queryAllProducts();

    int createNewProduct(String productName,String productIntroduce);

    int deleteAllProduct();
}
