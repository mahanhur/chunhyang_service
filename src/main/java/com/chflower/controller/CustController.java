package com.chflower.controller;

import com.chflower.service.CustService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cust")
public class CustController {
    @Autowired
    CustService custservice;
    String dir = "cust/";
    @RequestMapping("/account-orders")       // home > My account > addresses > orders(주문들))  //마이페이지 첫화면
    public String account_orders(Model model) throws Exception {
        model.addAttribute("center",dir+"account-orders");
        return "index";
    }
    @RequestMapping("/account-order")  // home > My account > addresses > order(단건))
    public String account_order(Model model){
        model.addAttribute("center",dir+"account-order");
        return "index";
    }
}