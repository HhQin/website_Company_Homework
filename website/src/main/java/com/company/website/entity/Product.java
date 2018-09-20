package com.company.website.entity;

public class Product {

    Integer id;
    String productName;
    String productIntroduce;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductIntroduce() {
        return productIntroduce;
    }

    public void setProductIntroduce(String produceIntroduce) {
        this.productIntroduce = produceIntroduce;
    }
}
