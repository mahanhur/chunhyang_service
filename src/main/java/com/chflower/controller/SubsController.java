package com.chflower.controller;

import com.chflower.dto.Addr;
import com.chflower.dto.Cust;
import com.chflower.dto.Subsitem;
import com.chflower.service.AddrService;
import com.chflower.service.PointService;
import com.chflower.service.SubsitemService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Date;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/subs")
public class SubsController {
    @Autowired
    PointService pointService;
    @Autowired
    SubsitemService subsitemService;
    @Autowired
    AddrService addrService;
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
    @RequestMapping("/checkout")
    public String checkout(Model model, HttpSession session, Integer subsitem_id, String date) throws Exception {
        Cust cust = (Cust) session.getAttribute("logincust");
        if(cust != null) {
            String cust_id = cust.getCust_id();
            List<Addr> addrlist;
            addrlist = addrService.getaddr(cust_id);
            model.addAttribute("addrlist",addrlist);

            Subsitem subsitem = subsitemService.get(subsitem_id);
            model.addAttribute("subsitem", subsitem);

            Integer point = pointService.presentpoint(cust_id);
            model.addAttribute("point", point);

        } else {
            return "redirect:/cust/login";
        }


        model.addAttribute("subsitem_id",subsitem_id);
        model.addAttribute("date",date);
        model.addAttribute("center","checkout");
        return "index";
    }

}
