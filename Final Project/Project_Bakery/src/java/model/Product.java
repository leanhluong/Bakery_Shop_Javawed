/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 *
 * @author Admin
 */
@Builder
@Getter
@Setter
@ToString
public class Product {
    private int id;
    private String name;
    private String code; //số lượng sản phẩm có trong kho
    private double price;
    private String description;
    private String imageUrl;
    private String createdDate;
    private int categoryId;

    public Product() {
    }

    public Product(int id, String name, String code, double price, String description, String imageUrl, String createdDate, int categoryId) {
        this.id = id;
        this.name = name;
        this.code = code;
        this.price = price;
        this.description = description;
        this.imageUrl = imageUrl;
        this.createdDate = createdDate;
        this.categoryId = categoryId;
    }

    
    
}
