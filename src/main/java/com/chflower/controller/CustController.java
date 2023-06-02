package com.chflower.controller;

import com.chflower.dto.Addr;
import com.chflower.dto.Cust;
import com.chflower.service.AddrService;
import com.chflower.service.CustService;
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
public class CustController {
    @Autowired
    CustService custservice;
    @Autowired
    AddrService addrservice;
    @Autowired
    private BCryptPasswordEncoder encoder;

    String dir = "cust/";
    @RequestMapping("/register")  //마이페이지 첫화면
    public String register(Model model) throws Exception {
        model.addAttribute("center",dir+"register");
        return "index";
    }
    @RequestMapping("/registerimpl")
    public String registerimpl(Model model,
                               Cust cust, HttpSession session) throws Exception {
        try {
            cust.setCust_pwd(encoder.encode(cust.getCust_pwd()));
            //화면에서 입력된 암호를 가져와서 암호화 후 다시 암호로 집어넣는다
            custservice.register(cust);
            session.setAttribute("logincust",cust);
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("가입오류");
        }
        model.addAttribute("rcust", cust);
        model.addAttribute("center",dir+"login");
        return "index";
    }
    @RequestMapping("/login")  //마이페이지 첫화면
    public String login(Model model,String redirectURL){
        model.addAttribute("redirectURL",  redirectURL);
        model.addAttribute("center",dir+"login");
        return "index";
    }
    @RequestMapping("/loginimpl")
    public String loginimpl(Model model, String cust_id, String cust_pwd,
                            HttpSession session) throws Exception {
        String nextPage = dir+"login";  //loginfail 했을 경우
        Cust cust = null;
        try {
            cust =custservice.get(cust_id);
            log.info(cust.toString());
            if(cust != null && encoder.matches(cust_pwd, cust.getCust_pwd())){
                // ==null : 아이디가 틀렸어  !=null 아이디까지는 성공
                // pwd는 입력된 패스워드. cust.getPwd 암호화된 패스워드 일치하는지 확인
                // &&앞에꺼실패하면 끝. &하나는 앞뒤 다 비교
                // true 나오면 로그인성공
                nextPage = dir+"account-orders"; //loginok -> index
                session.setMaxInactiveInterval(100000); //로그인유지시간
                session.setAttribute("logincust",cust);
                //session에 logincust를 넣어줌. 모델에 담은것처럼 세션에 담은것도 $사인으로 꺼낼 수 있다

            }
        } catch (Exception e) {
            throw new Exception("시스템 장애 : 다시 로그인 하세요");
        }

        model.addAttribute("center",nextPage);
        return "index";
    }
    @RequestMapping("/logout")
    public String logout(Model model, HttpSession session){
        if(session != null){
            session.invalidate();
        }
        return "redirect:/";
    }
    @RequestMapping("/account-orders")  //마이페이지 첫화면
    public String account_orders(Model model) throws Exception {
        model.addAttribute("center",dir+"account-orders");
        return "index";
    }
    @RequestMapping("/account-order")
    public String account_order(Model model){
        model.addAttribute("center",dir+"account-order");
        return "index";
    }
    @RequestMapping("/account-subsinfo")
    public String account_subsinfo(Model model){
        model.addAttribute("center",dir+"account-subsinfo");
        return "index";
    }
    @RequestMapping("/account-subsdetail")
    public String account_subsdetail(Model model){
        model.addAttribute("center",dir+"account-subsdetail");
        return "index";
    }
    @RequestMapping("/personalinfo")
    public String personalinfo(Model model, String cust_id) throws Exception {
        Cust cust = null;
        try {
            cust =custservice.get(cust_id);
            log.info("----------------------");
            log.info(cust.toString());
            log.info("----------------------");
        } catch (Exception e) {
            log.info("오류");
        }
        model.addAttribute("personalinfo",cust);
        model.addAttribute("center",dir+"personalinfo");
        return "index";
    }
    @RequestMapping("/personalinfoimpl")
    public String personalinfoimpl(Model model, Cust cust) throws Exception {
//        try {
//            cust.setCust_pwd(encoder.encode(cust.getCust_pwd()));
//            custservice.modify(cust);
//        } catch (Exception e) {
//            throw new Exception("시스템장애 : 나의정보 수정 에러");
//        }
//        //수정이 끝나면 account-personal-info 화면으로 보낸다
        return "redirect:/cust/personalinfo?cust_id="+cust.getCust_id();
    }

    @RequestMapping("/addr")
    public String addr(Model model, HttpSession session){
        Cust cust = (Cust) session.getAttribute("logincust");
        if (cust != null) {
            String cust_id = cust.getCust_id();
            List<Addr> list ;
            try {
                list = addrservice.getaddr(cust_id);
                model.addAttribute("addrlist", list);
            } catch (Exception e) {
                throw new RuntimeException("주소 리스트 호출 오류입니다.");
            }
        } else {
            // logincust 세션에 대한 처리가 필요한 경우
            return "redirect:/cust/login";
        }
        model.addAttribute("center",dir+"addr");
        return "index";
    }

    @RequestMapping("/addradd")
    public String addradd(Model model, HttpSession session, String addr_name, String def_addr1, String def_addr2){
        model.addAttribute("center",dir+"addradd");
        return "index";
    }
    @RequestMapping("/addraddimpl")
    public String addraddimpl(Model model, HttpSession session, String def_addr1, String def_addr2,  String addr_name){
        Cust cust = (Cust) session.getAttribute("logincust");
        String cust_id = cust.getCust_id();
        Addr addr = new Addr(def_addr1, def_addr2, addr_name,cust_id);
        try {
            addrservice.register(addr);
        } catch (Exception e) {
            throw new RuntimeException("주소 등록 오류입니다.");
        }
        return "redirect:/cust/addr";
    }
    @RequestMapping("/addrdel")
    public String adddel(Model model, int addr_id){
        try {
            addrservice.remove(addr_id);
        } catch (Exception e) {
            throw new RuntimeException("주소 등록 오류입니다.");
        }
        return "redirect:/cust/addr";
    }

    @RequestMapping("/addrupdate")
    public String addrupdate(Model model, int addr_id){
        Addr addr = null;
        try {
            addr = addrservice.get(addr_id);
        } catch (Exception e) {
            throw new RuntimeException("주소 업데이트 화면 오류입니다");
        }
        model.addAttribute("obj",addr);
        model.addAttribute("center",dir+"addrupdate");
        return "index";
    }

    @RequestMapping("/addrupdateimpl")
    public String addrupdateimpl(Model model, int addr_id, String def_addr1, String def_addr2, String addr_name){
        Addr addr = new Addr(addr_id, def_addr1, def_addr2, addr_name);
        try {
            addrservice.modify(addr);
        } catch (Exception e) {
            throw new RuntimeException("주소 업데이트 오류입니다.");
        }
        return "redirect:/cust/addr";
    }
}