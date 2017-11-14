package com.inventory.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.inventory.entity.Product;

@Component
public class InventoryForm {

    private String productCode;

    private List<Product> products;

    public String getProductCode() {
        return productCode;
    }

    public void setProductCode(String productCode) {
        this.productCode = productCode;
    }

    public List<Product> getProducts() {
        if(null == this.products){
            return new ArrayList<>();
        }
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}