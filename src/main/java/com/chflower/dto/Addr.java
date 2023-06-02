package com.chflower.dto;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Addr {
    private int addr_id;
    private String def_addr1;
    private String def_addr2;
    private String addr_name;
    private String cust_id;

    public Addr(String def_addr1, String def_addr2, String addr_name, String cust_id) {
        this.def_addr1 = def_addr1;
        this.def_addr2 = def_addr2;
        this.addr_name = addr_name;
        this.cust_id = cust_id;
    }

    public Addr(int addr_id, String def_addr1, String def_addr2, String addr_name) {
        this.addr_id = addr_id;
        this.def_addr1 = def_addr1;
        this.def_addr2 = def_addr2;
        this.addr_name = addr_name;
    }
}
