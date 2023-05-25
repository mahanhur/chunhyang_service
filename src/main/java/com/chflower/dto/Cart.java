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

}
