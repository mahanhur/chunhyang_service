package com.chflower.controller;

import com.chflower.util.TodayFlowerUtil;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
@RequestMapping("/flowerdictionary")
public class flowerDictionaryController {
    String dir = "flowerdictionary/";

    @RequestMapping("all")
    public String all(Model model) throws Exception {
        JSONArray list = new JSONArray();

        for(int i=1; i<=16; i+=1) {
            String date = Integer.toString(i);
            Object flower = TodayFlowerUtil.todayFlower(date);
            System.out.print(flower);
            list.add(flower);
        }
        log.info(list.toString());
        model.addAttribute("flowerlist", list);
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "all");
        return "index";
        }
    @RequestMapping("detail")
    public String detail(Model model,String dataNo) throws Exception {

        Object flower = TodayFlowerUtil.todayFlower(dataNo);

        model.addAttribute("flower", flower);
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "detail");
        return "index";
    }
}
