package com.chflower.controller;

import com.chflower.dto.Cust;
import com.chflower.service.CustService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

@RestController
public class AjaxImplController {

    @Autowired
    CustService custservice;

    @RequestMapping("/checkid")
    public Object checkid(String cust_id) throws Exception {
        int result = 0;
        //if(id.equals("qqqq") || id.equals("aaaa") || id.equals("ssss")){

        Cust cust = null;
        cust = custservice.get(cust_id);
        if(cust != null){
            result = 1;
        }
        return result;
    }

    //메인상단 오늘의 꽃 배너
    @RequestMapping("/getservertime")
    public Object getservertime() {
        Date date = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String formattedDate = dateFormat.format(date);
        return formattedDate;
    }
}