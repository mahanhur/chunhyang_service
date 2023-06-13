package com.chflower.controller;

import com.chflower.KakaoProfile;
import com.chflower.OAuthToken;
import com.chflower.dto.Addr;
import com.chflower.dto.Cust;
import com.chflower.mapper.CustMapper;
import com.chflower.service.AddrService;
import com.chflower.service.CustService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.UUID;

@Slf4j
@Controller
@RequestMapping("/cust")
public class CustController {
    @Autowired
    CustService custservice;
    @Autowired
    AddrService addrservice;
    @Autowired
    CustMapper custMapper;
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

    //kakao_login
    @RequestMapping ("/kakao/callback")
    public String kakao_callback(Model model, String code, HttpSession session) throws Exception {

        //POST방식으로 Key=value방식으로 카카오에 데이터를 요청
        RestTemplate rt=new RestTemplate();
        //httpheader 오브젝트 생성
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-type","application/x-www-form-urlencoded;charset=utf-8");

        //httpbody 오브젝트 생성
        MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
        params.add("grant_type","authorization_code");
        params.add("client_id","ec3548a0503c6cbca894ccff296796d3");
        params.add("redirect_uri","http://localhost/cust/kakao/callback");
        params.add("code",code);
        //httpheader와 httpbody를 하나의 오브젝트에 담기
        HttpEntity<MultiValueMap<String,String>>kakaoTokenRequest
                = new HttpEntity<>(params,headers);
        //http 요청하기 - post방식으로. response변수 응답
        ResponseEntity<String> response = rt.exchange(
                "https://kauth.kakao.com/oauth/token",
                HttpMethod.POST,
                kakaoTokenRequest,
                String.class
        );

        //Gson, Json, ObjectMapper
        ObjectMapper objectMapper = new ObjectMapper();
        OAuthToken oauthToken=null;
        try {
            oauthToken=objectMapper.readValue(response.getBody(), OAuthToken.class);
            log.info("access_token : "+oauthToken.getAccess_token());
        } catch (JsonMappingException e) {
            e.printStackTrace();
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }

        //httpheader 오브젝트 생성
        HttpHeaders headers2 = new HttpHeaders();
        headers2.add("Authorization", "Bearer " + oauthToken.getAccess_token());
        headers2.add("Content-type","application/x-www-form-urlencoded;charset=utf-8");

        //httpheader와 httpbody를 하나의 오브젝트에 담기
        HttpEntity<MultiValueMap<String,String>>kakaoProfileRequest2
                = new HttpEntity<>(headers2);
//        log.info("카카오 엑세스 토큰 : "+oauthToken.getAccess_token());
//        log.info("카카오 엑세스 토큰2 : "+headers2);
//        log.info("카카오 엑세스 토큰3 : "+kakaoProfileRequest2);

        // 엑세스 토큰을 사용하여 사용자 정보 조회
        RestTemplate rt2 = new RestTemplate();
        ResponseEntity<String> response2 = rt2.exchange(
                "https://kapi.kakao.com/v2/user/me",
                HttpMethod.POST,
                kakaoProfileRequest2,
                String.class
        );

        //Gson, Json, ObjectMapper
        ObjectMapper objectMapper2 = new ObjectMapper();
        KakaoProfile kakaoProfile=null;
        try {
            kakaoProfile=objectMapper2
                    .readValue(response2.getBody(), KakaoProfile.class);
        } catch (Exception e) {
            e.printStackTrace();
        }

        //Cust 오브젝트 : cust_id, cust_name, cust_pwd, email
        UUID kakaoAutoPWD = UUID.randomUUID(); //카카오 로그인 시 pwd 임의번호 생성
//        log.info("kakao_id :"+("kakao_"+kakaoProfile.getKakao_account().getEmail().replaceAll("@.*", "")));
//        log.info("kakao_name :"+kakaoProfile.getProperties().nickname);
//        log.info("kakao_pwd :"+kakaoAutoPWD);
//        log.info("kakao_email :"+kakaoProfile.getKakao_account().getEmail());

        //kakao_cust에 담기
        Cust kakao_cust = new Cust();
        kakao_cust.setCust_id("kakao_" + kakaoProfile.getKakao_account().getEmail().replaceAll("@.*", ""));
        kakao_cust.setCust_name(kakaoProfile.getProperties().getNickname());
        kakao_cust.setCust_pwd(kakaoAutoPWD.toString());
        kakao_cust.setPhone("00000000000");
        kakao_cust.setAge(0);
        kakao_cust.setEmail(kakaoProfile.getKakao_account().getEmail());
        log.info("카카오 로그인 정보 : "+kakao_cust);

        //기존회원 or 비회원 체크
        Cust existing_cust = custservice.get("kakao_"+kakaoProfile.getKakao_account().getEmail().replaceAll("@.*", ""));
        if (existing_cust == null) {
            // 비회원은 회원가입 페이지로 이동
            log.info("비회원 입니다. 카카오 간편회원가입 진행합니다.");
            custMapper.insert(kakao_cust);
            session.setAttribute("cust_id", "kakao_" + kakaoProfile.getKakao_account().getEmail().replaceAll("@.*", ""));
            return "redirect:/";
        }
        // 기존 회원은 바로 로그인 처리
        session.setAttribute("logincust", existing_cust);
        String nextPage = dir + "account-orders";
        session.setMaxInactiveInterval(100000);
        return "redirect:/";
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