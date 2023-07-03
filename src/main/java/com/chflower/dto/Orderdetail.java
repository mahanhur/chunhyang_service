package com.chflower.dto;

import lombok.*;

import java.sql.Date;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString

public class Orderdetail {
    private int orderdetail_id;
    private int order_id;
    private int item_id;
    private int order_cnt;

    private String cust_id;
    private Date order_date;
    private int order_amount;
    private Integer user_point;
    private int pay_amount;

    private String item_img;
    private String item_name;

    public Orderdetail(int orderdetail_id, int order_id, int item_id, int order_cnt) {
        this.orderdetail_id = orderdetail_id;
        this.order_id = order_id;
        this.item_id = item_id;
        this.order_cnt = order_cnt;
    }

    public Orderdetail(int order_id, int item_id, int order_cnt) {
        this.order_id = order_id;
        this.item_id = item_id;
        this.order_cnt = order_cnt;
    }
}
