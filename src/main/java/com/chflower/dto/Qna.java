package com.chflower.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Qna {
    private int qna_id;
    private String cust_id;
    private String post_type;
    private int subsitem_id;
    private String qna_title;
    private String qna_contents;
    private Date qna_wdate;
    private Date qna_udate;
    private String qna_image1;
    private String qna_image2;

    private String answer_id;
    private String answer_contents;

    private MultipartFile img1;
    private MultipartFile img2;
    }
