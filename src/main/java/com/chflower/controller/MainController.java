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

    @RequestMapping("/account-personal-info")
    public String account_personal_info(Model model){
        model.addAttribute("center","account-personal-info");
        return "index";
    }
    @RequestMapping("/account-wishlist")
    public String account_wishlist(Model model){
        model.addAttribute("center","account-wishlist");
        return "index";
    }
    @RequestMapping("/overview")
    public String overview(Model model){
        model.addAttribute("center","overview");
        return "index";
    }
    @RequestMapping("/contact-us")
    public String contact_us(Model model){
        model.addAttribute("center","contact-us");
        return "index";
    }
    @RequestMapping("/faq")
    public String faq(Model model){
        model.addAttribute("center","faq");
        return "index";
    }
}
