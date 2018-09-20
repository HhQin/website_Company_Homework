package com.company.website.mybatis;

import com.company.website.entity.Product;
import com.company.website.service.ProductService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ProductServiceTest {


    @Resource
    ProductService productService;

    @Test
    public void testQueryAllProduct(){
        List<Product> result=productService.queryAllProducts();
        for(Product product:result){
            System.out.println(product.getProductName());
            System.out.println(product.getProductIntroduce()+"\n\n");
        }
    }

    @Test
    public void testCreateNewProduct(){
        productService.createNewProduct("SiaoMi Mix2","The 5.99-inch display has the same holding feel as the 5.5-inch traditional 16:9 phone. The millet MIX2 USES a four-curved ceramic body, the camera decoration ring is all 18K gold-plated, and the body frame part is made of 7 series aluminum.");
    }

    @Test
    public void testDeleteAllProducts(){
        productService.deleteAllProduct();
    }
}

