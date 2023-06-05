package com.chflower.controller;

import com.chflower.dto.Addr;
import com.chflower.dto.Cart;
import com.chflower.dto.Cust;
import com.chflower.dto.Item;
import com.chflower.service.AddrService;
import com.chflower.service.CartService;
import com.chflower.service.ItemService;
import com.chflower.service.ItemimgService;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/cart")
public class CartController {
    @Autowired
    ItemService itemService;
    @Autowired
    ItemimgService itemimgService;
    @Autowired
    CartService cartService;
    @Autowired
    AddrService addrService;


    String dir = "cart/";

    //127.0.0.1/cart
    @RequestMapping("")
    public String main(Model model) {
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "all");
        return "index";
    }


    @RequestMapping("/all")
    public String all(Model model, String cust_id) throws Exception {

        List<Cart> list = null;
        try {
            list = cartService.getMyCart(cust_id);
        } catch (Exception e) {
            throw new Exception("시스템장애:ERORR002");
        }

        log.info("+++++++++++++++++++++"+list);

        model.addAttribute("clist", list);
    //    model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "all");
        return "index";
    }

    @RequestMapping("/addcart")
    public String addcart(Model model, Cart cart, HttpSession session) throws Exception {

        log.info("========================="+cart);

        cartService.register(cart);
        if (session != null) {
            Cust cust = (Cust) session.getAttribute("logincust");
            return "redirect:/cart/all?cust_id=" + cust.getCust_id();
        }
        return "redirect:/";
    }

    @RequestMapping("/delcart")
    public String delcart(Model model, Integer cart_id, HttpSession session) throws Exception {
        log.info("========================"+cart_id);
        cartService.remove(cart_id);

        if (session != null) {
            Cust cust = (Cust) session.getAttribute("logincust");
            return "redirect:/cart/all?cust_id=" + cust.getCust_id();
        }
        return "redirect:/";
    }
    @RequestMapping("/updatecart")
    public String updatecart(Model model, Cart cart, int cart_id, int cnt, HttpSession session) throws Exception {
        log.info("=============================" + cart_id, cnt);
        log.info("=========================================="+ cart);
//        cart.setCnt(cnt);
        cartService.modify(cart);
        if (session != null) {
            Cust cust = (Cust) session.getAttribute("logincust");
            return "redirect:/cart/all?cust_id=" + cust.getCust_id();
        }
        return "redirect:/";
    }
    @RequestMapping("/checkout")
    public String checkout(Model model, HttpSession session) throws Exception {
        Cust cust = (Cust) session.getAttribute("logincust");
        if(cust != null) {
            String cust_id = cust.getCust_id();
            List<Addr> addrlist;
            addrlist = addrService.getaddr(cust_id);
            model.addAttribute("addrlist",addrlist);

        } else {
            return "redirect:/cust/login";
        }
        model.addAttribute("center",dir+"checkout");
        return "index";
    }


    @RequestMapping("allpage")
    public String allpage(@RequestParam(required = false, defaultValue = "1") int pageNo, Model model) throws Exception {
        PageInfo<Item> p;
        try {
            p = new PageInfo<>(itemService.getPage(pageNo), 5); // 5:하단 네비게이션 개수
        } catch (Exception e) {
            throw new Exception("시스템장애:ERORR002");
        }
        model.addAttribute("target", "item");
        model.addAttribute("cpage", p);
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "allpage");
        return "index";
    }


}
