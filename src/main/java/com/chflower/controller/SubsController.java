package com.chflower.controller;

import com.chflower.dto.Item;
import com.chflower.dto.Itemimg;
import com.chflower.dto.Subsitem;
import com.chflower.service.ItemService;
import com.chflower.service.ItemimgService;
import com.chflower.service.SubsitemService;
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
@RequestMapping("/subs")
public class SubsController {

    @Autowired
    SubsitemService subsitemService;
    String dir = "subs/";

    @RequestMapping("/subscribe")
    public String subscribe(Model model){
        model.addAttribute("center",dir+"subscribe");
        return "index";
    }

    @RequestMapping("/all")
    public String all(Model model){
        List<Subsitem> list;
        try {
            list = subsitemService.get();
            model.addAttribute("slist", list);
        } catch (Exception e) {
            throw new RuntimeException("정기구독 상품 조회 오류입니다.");
        }
        model.addAttribute("center",dir+"all");
        return "index";
    }
    @RequestMapping("/detail")
    public String detail(Model model, int subsitem_id){
        Subsitem subsitem;
        try {
            subsitem = subsitemService.get(subsitem_id);
            model.addAttribute("obj", subsitem);
        } catch (Exception e) {
            throw new RuntimeException("정기구독 상품 상세조회 오류입니다.");
        }
        model.addAttribute("center",dir+"detail");
        return "index";
    }

}
