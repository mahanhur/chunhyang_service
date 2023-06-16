package com.chflower.controller;

import com.chflower.dto.RecommandItem;
import com.chflower.service.RecommandItemService;
import com.chflower.util.TodayFlowerUtil;
import com.chflower.util.WeatherUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@Controller
public class MainController {
    @Value("${adminserver}")
    String adminserver;

    @Autowired
    RecommandItemService recommandItemService;

    @RequestMapping("/")
    public String main(Model model) throws Exception {
        LocalDate SeoulNow = LocalDate.now(ZoneId.of("Asia/Seoul"));
        int dayOfYear = SeoulNow.getDayOfYear()+1;
        String date = Integer.toString(dayOfYear);
        Object result = TodayFlowerUtil.todayFlower(date);
        model.addAttribute("todayFlower", result);

        List<RecommandItem> recommandItemList= new ArrayList<>();
        recommandItemList = recommandItemService.get();
        log.info("recommandItemList={}", recommandItemList);

        model.addAttribute("recommandlist", recommandItemList);
//        if (session.getAttribute("logincust")==null) {
//            return "redirect:/cust/login";
//        }
        List<RecommandItem> selectedItems = recommandItemList.subList(0, 3);
        model.addAttribute("recommandlist", selectedItems);

        return "index";
    }

    @RequestMapping("/about")
    public String about(Model model){
        model.addAttribute("center","about");
        return "index";
    }
    @RequestMapping("/flower-class")
    public String flower_class(Model model){
        model.addAttribute("center","flower-class");
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

    @RequestMapping("/weather/weather")
    public String pop(Model model) throws Exception {
        String result = WeatherUtil.getWeather1("109");
        model.addAttribute("weatherinfo",result);
        model.addAttribute("center","weather/weather");
        return "index";
    }

    @RequestMapping("/pic")
    public String pic(Model model) {
        model.addAttribute("center", "pic");
        return "index";
    }

}
