package com.chflower.controller;

import com.chflower.dto.Bipum;
import com.chflower.dto.Bipumimg;
import com.chflower.dto.ItemReview;
import com.chflower.dto.Itemimg;
import com.chflower.service.BipumService;
import com.chflower.service.BipumimgService;
import com.chflower.service.CustService;
import com.chflower.service.ItemReviewService;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/bipum")
public class BipumController {
    @Autowired
    BipumService bipumService;
    @Autowired
    BipumimgService bipumimgService;
    @Autowired
    ItemReviewService itemReviewService;
    @Autowired
    CustService custservice;
//    @Autowired
//    CartService cartService;

    String dir = "bipum/";

    //127.0.0.1/item
    @RequestMapping("")
    public String main(Model model) {
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "center");
        return "index";
    }

    @RequestMapping("all")
    public String all(Model model) throws Exception {
        List<Bipum> list = null;
        try {
            list = bipumService.get();
        } catch (Exception e) {
            throw new Exception("화병/비품 전체 리스트를 가져오지 못함");
        }

        model.addAttribute("ilist", list);
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "all");
        return "index";
    }
    @RequestMapping("/detail")
    public String detail(Model model,Integer item_id, Bipum bipum, Bipumimg bipumimg) throws Exception {
        bipum = bipumService.get(item_id);
        List<Bipumimg> list= new ArrayList<>();
        list = bipumimgService.get();
        List<Bipumimg> bipumlist = new ArrayList<>();
       for (Bipumimg obj : list) {
            if (obj.getItem_id() == item_id) {
                bipumlist.add(obj);
            }
        }
        List<ItemReview> reviewlist = null;
        reviewlist = itemReviewService.getItemReview(item_id);
        ItemReview itemReview = itemReviewService.getAvgItemReview(item_id);
        log.info(itemReview.toString());
        model.addAttribute("reviewlist",reviewlist);
        model.addAttribute("itemReview",itemReview);

        model.addAttribute("detail", bipum);
        model.addAttribute("img", bipumimg);
        model.addAttribute("bipumlist", bipumlist);
        model.addAttribute("center", dir+"detail");
        return "index";
    }
//
//
//
//    @RequestMapping("allpage")
//    public String allpage(@RequestParam(required = false, defaultValue = "1") int pageNo, Model model) throws Exception {
//        PageInfo<Item> p;
//        try {
//            p = new PageInfo<>(itemService.getPage(pageNo), 5); // 5:하단 네비게이션 개수
//        } catch (Exception e) {
//            throw new Exception("시스템장애:ERORR002");
//        }
//        model.addAttribute("target", "item");
//        model.addAttribute("cpage", p);
//        model.addAttribute("left", dir + "left");
//        model.addAttribute("center", dir + "allpage");
//        return "index";
//    }
//
//    @RequestMapping("get")
//    public String get(Model model, Integer id) throws Exception {
//        Item item = null;
//        item = itemService.get(id);
//        model.addAttribute("gitem", item);
//
//        model.addAttribute("left", dir + "left");
//        model.addAttribute("center", dir + "get");
//        return "index";
//    }
}
