package com.company.website.mapper;

import com.company.website.entity.Product;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ProductMapper {

    @Select("select * from t_product")
    List<Product> queryAllProducts();

    @Insert("insert into t_product(productName,productIntroduce) values(#{productName},#{productIntroduce})")
    int createNewProduct(@Param(value = "productName")String productName,@Param(value = "productIntroduce")String productIntroduce);

    @Delete("DELETE FROM t_product")
    int deleteAllProducts();


}
