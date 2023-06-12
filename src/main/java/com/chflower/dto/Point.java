package com.chflower.dto;

import lombok.*;

import java.util.Date;


@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString

public class Point {
    private int point_id;
    private String cust_id;
    private int plus_point;
    private int minus_point;
    private int point;
    private Date point_rdate;

    public Point(String cust_id, int minus_point) {
        this.cust_id = cust_id;
        this.minus_point = minus_point;
    }
}
