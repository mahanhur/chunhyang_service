package com.chflower.controller;

import com.chflower.dto.*;
import com.chflower.service.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
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
    @Autowired
    SubsService subsService;
    @Autowired
    PaymentService paymentService;
    @Autowired
    SubsdetailService subsdetailService;
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
    public String checkout(Model model, HttpSession session, Integer subsitem_id, @DateTimeFormat(pattern = "yyyy-MM-dd") Date date) throws Exception {
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

    @RequestMapping("/success")
    public String success(Model model,HttpSession session,int subsitem_id,int subs_amount, int minus_point, int subs_pay_amount, int addr_id, @DateTimeFormat(pattern = "yyyy-MM-dd") Date duedate) throws Exception {
        Cust cust = (Cust) session.getAttribute("logincust");
        String cust_id = cust.getCust_id();
        String cust_name = cust.getCust_name();
        String phone = cust.getPhone();
        String rec_add1 = addrService.get(addr_id).getDef_addr1();
        String rec_add2 = addrService.get(addr_id).getDef_addr2();
        int subsitem_cnt = subsitemService.get(subsitem_id).getSubsitem_cnt();

        Subs subs = new Subs(cust_id, subsitem_id, subs_amount, minus_point, subs_pay_amount);
        try {
            //subsinfo 적재
            subsService.register(subs);
            int subs_id = subsService.getlast();
            model.addAttribute("subs_id",subs_id);
            //payment 적재
            Payment payment = new Payment(subs_id, 1,1);
            paymentService.subsinsert(payment);
            //point 적재
//            if(minus_point != 0) {
                Point point = new Point(cust_id, minus_point);
                pointService.minuspoint(point);
//            }
            //subsdetail 적재
//            if(date.equals(null)) {
            String receiver = cust_name;
            String reciver_phone = phone;
            Calendar cal = Calendar.getInstance();
            cal.setTime(duedate);

            for (int i = 0; i < subsitem_cnt; i++) {
                Subsdetail subsdetail = new Subsdetail(subs_id, cust_id, receiver, reciver_phone, rec_add1, rec_add2, "", cal.getTime());
                subsdetailService.register(subsdetail);
                cal.add(Calendar.DATE, 14);
            }
//            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("success시  register 오류입니다.");
        }
        model.addAttribute("center",dir+"success");
        return "index";
    }
}
