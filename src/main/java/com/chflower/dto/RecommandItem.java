package com.chflower.dto;

import lombok.*;

import java.util.Date;
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class RecommandItem {
    private int rank;
    private int item_id;
    private double category_id;
    private String item_img;
    private String item_name;
    private int item_cnt;
    private int item_price;
    private String item_content;
    private Date item_rdate;
    private String flower_color;
    private String flower_type;
    private String flower_size;
    private String main_img;

    private int subsitem_id;
    private String subsitem_name;
    private int subsitem_price;
    private String subsitem_content;
    private String subsitem_img;
}
