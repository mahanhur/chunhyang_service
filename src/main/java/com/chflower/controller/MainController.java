package com.chflower.controller;

import com.chflower.util.TodayFlowerUtil;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.time.LocalDate;
import java.time.ZoneId;

@Controller
public class MainController {
    @Value("${adminserver}")
    String adminserver;

    @RequestMapping("/")
    public String main(Model model) throws Exception {
        LocalDate SeoulNow = LocalDate.now(ZoneId.of("Asia/Seoul"));
        int dayOfYear = SeoulNow.getDayOfYear()+1;
        String date = Integer.toString(dayOfYear);
        Object result = TodayFlowerUtil.todayFlower(date);
        model.addAttribute("todayFlower", result);

//        if (session.getAttribute("logincust")==null) {
//            return "redirect:/cust/login";
//        }
        model.addAttribute("adminserver",adminserver);

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
    @RequestMapping("/coming-soon")
    public String coming_soon(Model model){
        model.addAttribute("center","coming-soon");
        return "index";
    }
    @RequestMapping("/faq")
    public String faq(Model model){
        model.addAttribute("center","faq");
        return "index";
    }


}
