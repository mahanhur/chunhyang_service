package com.chflower.dto;

import lombok.*;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Subsdate {
    private Date date1;
    private Date date2;
    private Date date3;
    private Date date4;
    private Date date5;
    private Date date6;
    private Date date7;

    public Subsdate(Date date1, Date date2, Date date3) {
        this.date1 = date1;
        this.date2 = date2;
        this.date3 = date3;
    }
}
