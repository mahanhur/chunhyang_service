package com.chflower.controller;

import com.chflower.dto.Bipum;
import com.chflower.dto.Item;
import com.chflower.dto.RecommandItem;
import com.chflower.service.BipumService;
import com.chflower.service.EntryCountService;
import com.chflower.service.ItemService;
import com.chflower.service.RecommandItemService;
import com.chflower.util.TodayFlowerUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@Controller
public class LogController {
    @Value("${adminserver}")
    String adminserver;

    @Autowired
    EntryCountService entryCountService;
    @Autowired
    BipumService bipumService;
    @Autowired
    ItemService itemService;

    @RequestMapping("/subs/subscribe")
    public String subs(Model model){
        String dir = "subs/";
        // 이전 카운트 값을 가져옴
        int previousCount = entryCountService.getCountdir(dir);

        // 카운트 증가
        int newCount = entryCountService.incrementCountdir(dir);

        // 로그 작성
        log.info(dir + newCount);
        model.addAttribute("center","subs/subscribe");
        return "index";
    }


    @RequestMapping("/bipum/all")
    public String bipum(Model model) throws Exception {
        List<Bipum> list = null;
        String dir = "bipum/";
        try {
            list = bipumService.get();
            // 이전 카운트 값을 가져옴
            int previousCount = entryCountService.getCountdir(dir);

            // 카운트 증가
            int newCount = entryCountService.incrementCountdir(dir);

            // 로그 작성
            log.info(dir + newCount);
        } catch (Exception e) {
            throw new Exception("화병/비품 전체 리스트를 가져오지 못함");
        }

        model.addAttribute("ilist", list);
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "all");
        return "index";
    }


    @RequestMapping("/item/all")
    public String all(Model model) throws Exception {
        List<Item> list = null;
        String dir = "item/";
        try {
            list = itemService.get();
            // 이전 카운트 값을 가져옴
            int previousCount = entryCountService.getCountdir(dir);

            // 카운트 증가
            int newCount = entryCountService.incrementCountdir(dir);

            // 로그 작성
            log.info(dir + newCount);

        } catch (Exception e) {
            throw new Exception("시스템장애:ERORR002");
        }


        model.addAttribute("ilist", list);
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "all");
        return "index";
    }


}
