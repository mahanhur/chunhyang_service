package com.chflower.controller;

import com.chflower.dto.Cust;
import com.chflower.service.CartService;
import com.chflower.service.CustService;
import com.chflower.util.FileUploadUtil;
import com.chflower.util.WeatherUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Date;
@Slf4j
@RestController
public class AjaxImplController {

    @Autowired
    CustService custservice;
    @Autowired
    CartService cartservice;

    @Value("${uploadimgdir}")
    String imgdir;

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

    @RequestMapping("/getcartcount")
    public Object getcartcount(HttpSession session) throws Exception {
        Cust cust = (Cust) session.getAttribute("logincust");
        if(cust != null) {
            String cust_id = cust.getCust_id();
            int result = cartservice.countMyCart(cust_id);
            return result;
        } else {
            return "0";
        }

    }
    @RequestMapping("/weather2")
    public Object weather2() throws Exception {
        LocalDate SeoulNow = LocalDate.now(ZoneId.of("Asia/Seoul"));

        // 포맷 정의
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMM");
        // 포맷 적용
        String yearMonth = SeoulNow.format(formatter);

        int dayOfMonth = SeoulNow.getDayOfMonth(); // 일(월 기준)
        int day = dayOfMonth -1;

        String date = yearMonth + day;
        log.info(date);

        return  WeatherUtil.getWeather3("108",date);
    }

    @RequestMapping("/saveimg")
    public String saveimg(MultipartFile file){
        String filename = file.getOriginalFilename();
        FileUploadUtil.saveFile(file, imgdir);
        return filename;
    }
}