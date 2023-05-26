package com.chflower.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
    @RequestMapping("/")
    public String main(){
        return "index";
    }

    @RequestMapping("/about")
    public String about(Model model){
        model.addAttribute("center","about");
        return "index";
    }
    @RequestMapping("/account-address")  // home > My account > addresses
    public String account_address(Model model){
        model.addAttribute("center","account-address");
        return "index";
    }
    @RequestMapping("/account-address-edit")  // home > My account > addresses > 주소수정
    public String account_address_edit(Model model){
        model.addAttribute("center","account-address-edit");
        return "index";
    }
    @RequestMapping("/account-order")  // home > My account > addresses > order(단건))
    public String account_order(Model model){
        model.addAttribute("center","account-order");
        return "index";
    }
    @RequestMapping("/account-orders")  // home > My account > addresses > orders(주문들))
    public String account_orders(Model model){
        model.addAttribute("center","account-orders");
        return "index";
    }
    @RequestMapping("/account-personal-info")  // home > My account > addresses > orders(주문들))
    public String account_personal_info(Model model){
        model.addAttribute("center","account-personal-info");
        return "index";
    }
    @RequestMapping("/account-wishlist")  // home > My account > addresses > orders(주문들))
    public String account_wishlist(Model model){
        model.addAttribute("center","account-wishlist");
        return "index";
    }
    @RequestMapping("/overview")  // home > My account > addresses > orders(주문들))
    public String overview(Model model){
        model.addAttribute("center","overview");
        return "index";
    }
    @RequestMapping("/register")
    public String register(Model model){
        model.addAttribute("center","register");
        return "index";
    }
}
