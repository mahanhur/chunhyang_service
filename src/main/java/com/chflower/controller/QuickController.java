package com.chflower.controller;

import com.chflower.dto.*;
import com.chflower.service.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping("/quick") // /cust를 넣음으으로 기본적으로 주소에 /cust가 셋팅됨
public class QuickController {

    @Autowired
    ItemService itemService;
    @Autowired
    ItemimgService itemimgService;

    Logger logger = LoggerFactory.getLogger(this.getClass().getSimpleName());
    String dir = "quick/";
    @RequestMapping("/order")
    public String quickorder(Model model,Integer item_id, Item item, Itemimg itemimg) throws Exception {
        item = itemService.get(230);
        List<Itemimg> list= new ArrayList<>();
        list = itemimgService.get();

        List<Itemimg> ilist = new ArrayList<>();
        for (Itemimg obj : list) {
            if (obj.getItem_id() == 230) {
                ilist.add(obj);
            }
        }
        model.addAttribute("item_id", 230);

        model.addAttribute("detail", item);
        model.addAttribute("img", itemimg);
        model.addAttribute("ilist", ilist);

        model.addAttribute("center",dir+"order");
        return "index";
    }
    @RequestMapping("/quick")
    public String quick(Model model){
        model.addAttribute("center",dir+"quick");
        return "index";
    }

    @RequestMapping("/test")
    public String test(Model model){
        model.addAttribute("center",dir+"test");
        return "index";
    }

}
