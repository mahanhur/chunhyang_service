package com.chflower.dto;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Adm {
    private int admin_id;
    private String admin_pwd;
    private String admin_name;
    private String admin_level;

}
