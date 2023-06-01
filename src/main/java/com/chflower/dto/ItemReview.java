package com.chflower.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.Date;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class ItemReview {
    private int review_id;
    private String cust_id;
    private int item_id;
    private String review_title;
    private String review_content;
    private Date review_rdata;
    private int review_score;
    private String review_img;

    private Integer avgscore;
    private Integer cnt;

    private MultipartFile img;
}