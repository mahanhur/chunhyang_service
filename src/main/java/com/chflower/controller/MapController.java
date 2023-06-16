package com.chflower.controller;

import com.chflower.service.MarkerService;
import com.chflower.service.MarkerdescService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/map") // /cust를 넣음으으로 기본적으로 주소에 /cust가 셋팅됨
public class MapController {
    @Autowired
    MarkerService markerService;
    @Autowired
    MarkerdescService markerdescService;

    Logger logger = LoggerFactory.getLogger(this.getClass().getSimpleName());
    String dir = "map/";
    @RequestMapping("/map01")
    public String map01(Model model){
        model.addAttribute("center",dir+"map01");
        return "index";
    }

}
