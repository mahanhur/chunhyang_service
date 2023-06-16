package com.chflower.controller;

import com.chflower.util.CFRFaceUtil;
import com.chflower.util.TodayFlowerUtil;
import lombok.extern.slf4j.Slf4j;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

@Slf4j
@Controller
public class NcpController {


    @Value("${uploadimgdir}")
    String imgpath;

    @RequestMapping("/mycfr")
    public String mycfr(Model model, String imgname) throws Exception {

        //Ncp에게 물어본다

        JSONObject result =
                (JSONObject) CFRFaceUtil.getResult(imgpath,imgname);
        log.info(result.toJSONString());

        //일단 선언하자
        String emotion_value = "";
        String gender_value = "";
        String pose_value = "";
        String age_value = "";

        JSONArray faces = (JSONArray)result.get("faces");
        JSONObject obj = (JSONObject)faces.get(0);

        JSONObject gender = (JSONObject)obj.get("gender");
        gender_value = (String)gender.get("value");

        JSONObject age = (JSONObject)obj.get("age");
        age_value = (String)age.get("value");

        JSONObject emotion = (JSONObject)obj.get("emotion");
        emotion_value = (String)emotion.get("value");

        JSONObject pose = (JSONObject)obj.get("pose");
        pose_value = (String)pose.get("value");

        Map<String,String> map = new HashMap<>();
        map.put("gender",gender_value);
        map.put("age",age_value);
        map.put("emotion",emotion_value);
        map.put("pose",pose_value);

        //결과를 받는다.
        model.addAttribute("result",map);
        model.addAttribute("center","pic");

        Random r = new Random();
        int i = r.nextInt(365)+1;
        String date = Integer.toString(i);
        Object j = TodayFlowerUtil.todayFlower(date);
        model.addAttribute("yourlower", j);

        return "index";
    }

}