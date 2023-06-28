package com.chflower.controller;

import com.chflower.dto.ItemReview;
import com.chflower.dto.RecommandItem;
import com.chflower.service.ItemReviewService;
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
    @Autowired
    ItemReviewService itemReviewService;

    @RequestMapping("/")
    public String main(Model model) throws Exception {
        LocalDate SeoulNow = LocalDate.now(ZoneId.of("Asia/Seoul"));
        int dayOfYear = SeoulNow.getDayOfYear()+1;
        String date = Integer.toString(dayOfYear);
        Object result = null;
        try {
            result = TodayFlowerUtil.todayFlower(date);
        } catch (Exception e) {
            throw new RuntimeException("flower 오류");
        }
        model.addAttribute("todayFlower", result);

        //subsitem 상품 랜덤3개 담긴 리스트
        List<RecommandItem> recommandSubsList= new ArrayList<>();
        recommandSubsList = recommandItemService.getsubs();
        log.info("recommandItemList={}", recommandSubsList);
        model.addAttribute("recommandlist", recommandSubsList);

        //category_id=100 상품 랜덤3개 담긴 리스트
        List<RecommandItem> recommandItem100List= new ArrayList<>();
        recommandItem100List = recommandItemService.get100();
        log.info("recommandItemList={}", recommandItem100List);
        model.addAttribute("recommandlist1", recommandItem100List);

        //category_id=200 상품 랜덤3개 담긴 리스트
        List<RecommandItem> recommandItem300List= new ArrayList<>();
        recommandItem300List = recommandItemService.get300();
        log.info("recommandItemList={}", recommandItem300List);
        model.addAttribute("recommandlist2", recommandItem300List);

        //최신 Item Review 보기
        List<ItemReview> dabalreview= new ArrayList<>();
        dabalreview = itemReviewService.dabalreview();
        model.addAttribute("dabalreview", dabalreview);

        List<ItemReview> flowerreview= new ArrayList<>();
        flowerreview = itemReviewService.flowerreview();
        model.addAttribute("flowerreview", flowerreview);

        List<ItemReview> bipumreview= new ArrayList<>();
        bipumreview = itemReviewService.bipumreview();
        model.addAttribute("bipumreview", bipumreview);

        //1:1채팅하기위해서 어드민 서버 정보 모델로 날려준다
        model.addAttribute("adminserver",adminserver);

        return "index";
    }

    @RequestMapping("/about")
    public String about(Model model){
        model.addAttribute("center","about");
        return "index";
    }

    @RequestMapping("/test")
    public String test(Model model){
        model.addAttribute("center","rankingtest");
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
//        String result = WeatherUtil.getWeather1("109");
//        model.addAttribute("weatherinfo",result);
        model.addAttribute("center","weather/weather");
        return "index";
    }
    @RequestMapping("/weather/w")
    public String w(Model model) throws Exception {
        model.addAttribute("center","weather/w");
        return "index";
    }

    @RequestMapping("/pic")
    public String pic(Model model) {
        model.addAttribute("center", "pic");
        return "index";
    }
    @RequestMapping("/kakaopaysuccess")
    public String kakaopaysuccess(Model model) {
        model.addAttribute("center", "kakaopaysuccess");
        return "index";
    }

}
