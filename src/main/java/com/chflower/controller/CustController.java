package com.chflower.controller;

import com.chflower.service.CustService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cust")
public class CustController {

    @Autowired
    CustService custService;



}
