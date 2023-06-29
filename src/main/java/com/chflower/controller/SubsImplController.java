package com.chflower.controller;


import com.chflower.dto.Addr;
import com.chflower.service.AddrService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

@Slf4j
@RestController
@RequestMapping("/subs")
public class SubsImplController {

    @Autowired
    AddrService addrService;

    @RequestMapping("/kakaopay")
    public String kakaopay(Model model) {
        try {
            URL url = new URL("https://kapi.kakao.com/v1/payment/ready"); // 연결할 주소 선언
            HttpURLConnection con = (HttpURLConnection) url.openConnection(); //con은 연결선 역할, 해당 주소와 연결한다는 의미
            con.setRequestMethod("POST"); //연결방식은 post로 하겠다 선언(카카오페이에서 정해준 방식 그대로)
            con.setRequestProperty("Authorization", "KakaoAK 65f4264d0c03946cfc2347a4b3514bd4");// 외부에서 요청한 프로퍼티를 심어주는 역할
            con.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");// 외부에서 요청한 프로퍼티를 심어주는 역할
            con.setDoOutput(true); // output은 전달할 값(파라미터), input은 받아올 값(결과값) 디폴트가 true이므로 따로 선언 x
            String params = "cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&item_name=초코파이&quantity=1&total_amount=2200&vat_amount=200&tax_free_amount=0&approval_url=https://49.50.160.198:8443/kakaopaysuccess&fail_url=http://localhost/fail&cancel_url=http://localhost/cancel";

            OutputStream outputStream = con.getOutputStream(); // 실제로 전달하는(주는) 객체, 바이트 형식으로 전환하여 전달해야만 한다
            DataOutputStream doutputStream = new DataOutputStream(outputStream); // 전달객체 중 데이터를 전달하는 객체(dops로 ops를 전달한다), 연결선에 태워서 준비 중
            doutputStream.writeBytes(params); //params를 바이트 형식으로 변환함
            doutputStream.close(); // dops 손에 있는 data를 놔버림, 연결선에 타있으므로 데이터가 전송됨

            int result = con.getResponseCode(); // 실제 연결 결과를 int로 받고자 함
            InputStream inputStream; //서버연결로부터 받는 객체, 마찬가지로 바이트 형식으로 받음
            if(result == 200) {
                inputStream = con.getInputStream();
            } else {
                inputStream = con.getErrorStream();
            }
            InputStreamReader reader = new InputStreamReader(inputStream); //받은 값을 읽어내는 객체
            BufferedReader converter = new BufferedReader(reader); // 읽은 값을 바이트에서 형변환을 도와줌

            return converter.readLine();

        } catch (MalformedURLException e) {
            throw new RuntimeException("URL 객체 에러입니다");
        } catch (IOException e) {
            throw new RuntimeException("HttpURLConnection 에러입니다");
        }
    }

    @RequestMapping("/checkout/addrimpl")
    public Addr addrimpl(Integer addr_id) {
        try {
            Addr addr = addrService.get(addr_id);
            return addr;
        } catch (Exception e) {
            throw new RuntimeException("addrimpl 에러입니다");
        }
    }
}
