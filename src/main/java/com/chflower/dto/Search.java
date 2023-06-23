package com.chflower.dto;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Search {
    private String category;  // 전체, 꽃다발, 꽃, 화병, 비품
    private String searchtext;    //
}
