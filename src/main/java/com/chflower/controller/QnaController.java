package com.chflower.controller;

import com.chflower.dto.Qna;
import com.chflower.service.QnaService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/cust")
public class QnaController {

    @Autowired
    QnaService qnaService;
    @Autowired
    private BCryptPasswordEncoder encoder;

    String dir = "cust/";

    @RequestMapping("/account-qna")
    public String account_qna(Model model,String cust_id) throws Exception{
        List<Qna> list = null;
        list = qnaService.getQna(cust_id);
        model.addAttribute("qlist",list);
        model.addAttribute("center",dir+"account-qna");
        return "index";
    }
}