package com.kbstar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cust")
public class CustController {

    String dir = "cust/";
    @RequestMapping("")
    public String main(){
        return "index";
    }



}
