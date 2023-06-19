package com.chflower.dto;

import lombok.*;

import java.util.Date;


@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString

public class Delinfo {
    private int del_id;
    private int subsdetail_id;
    private int order_id;
    private String del_state;
    private String del_com;
    private String invoice_id;
    private Date del_startdate;
    private Date del_findate;

    public Delinfo(int del_id, String del_state, String del_com, String invoice_id, Date del_startdate, Date del_findate) {
        this.del_id = del_id;
        this.del_state = del_state;
        this.del_com = del_com;
        this.invoice_id = invoice_id;
        this.del_startdate = del_startdate;
        this.del_findate = del_findate;
    }

    public Delinfo(int subsdetail_id) {
        this.subsdetail_id = subsdetail_id;
    }

    public Delinfo(Integer order_id) {
        this.order_id = order_id;
    }
}
