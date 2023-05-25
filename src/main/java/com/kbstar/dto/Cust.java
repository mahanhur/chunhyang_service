package com.kbstar.dto;

import lombok.*;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Cust {
    private String cust_id;
    private String cust_name;
    private String cust_pwd;
    private String phone;
    private Number age;
    private String email;
    private String cust_del_yn;
    private Date cust_del_date;

}
