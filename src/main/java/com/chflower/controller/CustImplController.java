package com.chflower.controller;


import com.chflower.dto.Payment;
import com.chflower.service.PaymentService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@Slf4j
@RestController
@RequestMapping("/cust")
public class CustImplController {

    @Autowired
    PaymentService paymentService;
    @RequestMapping("/paymentimpl")
    public Object paymentimpl(Integer subs_id) {
        Payment payment;
        payment = paymentService.selectsubsid(subs_id);
        return payment;
    }
}
