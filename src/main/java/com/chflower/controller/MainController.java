package com.chflower.controller;

import com.chflower.dto.Cust;
import com.chflower.dto.Item;
import com.chflower.service.ItemService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {


    ItemService itemService;

    Logger logger = LoggerFactory.getLogger(this.getClass().getSimpleName());
    @RequestMapping("/")
    public String main(){
        return "index";
    }

    @RequestMapping("/flower")
    public String flower(Model model, int item_id) throws Exception {
        Item item = null;
        try {
            item = itemService.get(item_id);
        } catch (Exception e) {
            throw new Exception("시스템장애");
        }
        model.addAttribute("flower", item);
        model.addAttribute("center", "flower");
        return "index";
    }
    @RequestMapping("/vase")
    public String shop(Model model, String id) throws Exception {
        Cust cust = null;
        try {
            //cust = custService.get(id);
        } catch (Exception e) {
            throw new Exception("시스템장애");
        }
        model.addAttribute("custinfo", cust);
        model.addAttribute("center", "custinfo");
        return "index";
    }

}
