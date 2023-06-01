package com.chflower.dto;

import lombok.*;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Cart {
    private int cart_id;
    private String cust_id;
    private double item_id;
    private int cnt;
    private Date item_rdate;

    private String cust_name;
    private String item_img;
    private String item_name;
    private int item_price;
    private String flower_color;
    private String flower_type;
    private String flower_size;
}
