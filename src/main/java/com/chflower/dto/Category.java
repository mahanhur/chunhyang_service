package com.chflower.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class Category {
    private int category_id;
    private String category_name;
    private int topcate_id;
    private String topcate_name;
}
