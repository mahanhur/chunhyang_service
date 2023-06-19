package com.chflower.dto;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Payment {
    private int pay_id;
    private Integer order_id ;
    private int subs_id;
    private int pay_opt;
    private int pay_state;

    public Payment(int order_id, int subs_id, int pay_opt, int pay_state) {
        this.order_id = order_id;
        this.subs_id = subs_id;
        this.pay_opt = pay_opt;
        this.pay_state = pay_state;
    }

    public Payment(int subs_id, int pay_opt, int pay_state) {
        this.subs_id = subs_id;
        this.pay_opt = pay_opt;
        this.pay_state = pay_state;
    }




}
