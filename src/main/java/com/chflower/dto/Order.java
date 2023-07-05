package com.chflower.dto;

import lombok.*;

import java.sql.Date;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Order {
    private Integer order_id;
    private String cust_id;
    private Date order_date;
    private int order_amount;
    private Integer user_point;
    private int pay_amount;
    private String order_name;
    private String order_phone;
    private String od_addr1;
    private String od_addr2;
    private String ship_memo;

    public Order(String cust_id, int order_amount, Integer user_point, int pay_amount, String order_name, String order_phone, String od_addr1, String od_addr2) {
        this.cust_id = cust_id;
        this.order_amount = order_amount;
        this.user_point = user_point;
        this.pay_amount = pay_amount;
        this.order_name = order_name;
        this.order_phone = order_phone;
        this.od_addr1 = od_addr1;
        this.od_addr2 = od_addr2;
    }

    public Order(String cust_id, Date order_date, int order_amount, int pay_amount, String order_name, String order_phone, String od_addr1, String od_addr2) {
        this.cust_id = cust_id;
        this.order_date = order_date;
        this.order_amount = order_amount;
        this.pay_amount = pay_amount;
        this.order_name = order_name;
        this.order_phone = order_phone;
        this.od_addr1 = od_addr1;
        this.od_addr2 = od_addr2;
    }

    public Order(String cust_id, Date order_date, int order_amount, int pay_amount, String order_name, String order_phone, String od_addr1) {
        this.cust_id = cust_id;
        this.order_date = order_date;
        this.order_amount = order_amount;
        this.pay_amount = pay_amount;
        this.order_name = order_name;
        this.order_phone = order_phone;
        this.od_addr1 = od_addr1;
    }
}