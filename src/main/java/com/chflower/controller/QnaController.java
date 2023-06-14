package com.chflower.controller;

import com.chflower.dto.Cust;
import com.chflower.dto.Qna;
import com.chflower.service.CustService;
import com.chflower.service.QnaService;
import com.chflower.util.FileUploadUtil;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/cust")
public class QnaController {

    @Autowired
    QnaService qnaService;
    @Autowired
    CustService custservice;
    @Autowired
    private BCryptPasswordEncoder encoder;
    @Value("${adminserver}")
    String adminserver;

    String dir = "cust/";

    @Value("${uploadimgdir}") /*이미지 저장경로*/
    String imgdir;
    @RequestMapping("/account-qna")
    public String account_qna(Model model,String cust_id) throws Exception{
        List<Qna> list = null;
        list = qnaService.getQna(cust_id);
        model.addAttribute("qlist",list);
        model.addAttribute("center",dir+"account-qna");
        return "index";
    }
    @RequestMapping("/account-qnadetail")
    public String qnadetail(Model model,String qna_id, HttpSession session) throws Exception{
        Qna qna = null;
        qna = qnaService.get(qna_id);

        if (session.getAttribute("logincust")==null) {
            return "redirect:/cust/login";
        }
        model.addAttribute("adminserver",adminserver);
        model.addAttribute("gqna",qna);
        model.addAttribute("center",dir+"account-qnadetail");
        return "index";
    }
    @RequestMapping("/account-question")
    public String account_question(Model model) throws Exception{
        model.addAttribute("center",dir+"account-question");
        return "index";
    }
    @RequestMapping("/account-addquestion")
    public String account_addquestion(Model model, Qna qna,String cust_id) throws Exception{

        Cust cust = null;
        cust =custservice.get(cust_id);

        MultipartFile mf1 = qna.getImg1();
        String imgname1 = mf1.getOriginalFilename();
        log.info(imgname1.toString());
        qna.setQna_image1(imgname1);
        MultipartFile mf2 = qna.getImg2();
        String imgname2 = mf2.getOriginalFilename();
        qna.setQna_image2(imgname2);

        qnaService.register(qna);
        FileUploadUtil.saveFile(mf1,imgdir);
        FileUploadUtil.saveFile(mf2,imgdir);

        model.addAttribute("logincust",cust);
        return "redirect:/cust/account-qna?cust_id="+cust.getCust_id();
    }
}