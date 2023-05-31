package com.chflower.controller;

import com.chflower.dto.Item;
import com.chflower.dto.Itemimg;
import com.chflower.service.ItemService;
import com.chflower.service.ItemimgService;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/item")
public class ItemController {
    @Autowired
    ItemService itemService;
    @Autowired
    ItemimgService itemimgService;
//    @Autowired
//    CartService cartService;


    String dir = "item/";

    //127.0.0.1/item
    @RequestMapping("")
    public String main(Model model) {
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "center");
        return "index";
    }


    @RequestMapping("all")
    public String all(Model model) throws Exception {
        List<Item> list = null;
        try {
            list = itemService.get();
        } catch (Exception e) {
            throw new Exception("시스템장애:ERORR002");
        }

        log.info("+++++++++++++++++++++"+list);

        model.addAttribute("ilist", list);
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "all");
        return "index";
    }
    @RequestMapping("/detail")
    public String detail(Model model, Integer item_id, Item item, Itemimg itemimg) throws Exception {

        item = itemService.get(item_id);
        List<Itemimg> list= new ArrayList<>();
        list = itemimgService.get();
//        log.info("---------------------"+list);

        List<Itemimg> ilist = new ArrayList<>();
       for (Itemimg obj : list) {
            if (obj.getItem_id() == item_id) {
                ilist.add(obj);
            }
        }
//        log.info("=================="+ilist);

        model.addAttribute("detail", item);
        model.addAttribute("img", itemimg);
        model.addAttribute("ilist", ilist);
        model.addAttribute("center", dir+"detail");
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

    @RequestMapping("get")
    public String get(Model model, Integer id) throws Exception {
        Item item = null;
        item = itemService.get(id);
        model.addAttribute("gitem", item);

        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "get");
        return "index";
    }

//    @RequestMapping("allcart")
//    public String allcart(Model model, String id) throws Exception {
//        List<Cart> list = null;
//        try {
//            list = cartService.getMyCart(id);
//        } catch (Exception e) {
//            throw new Exception("시스템장애:ERORR002");
//        }
//
//        model.addAttribute("allcart", list);
//        model.addAttribute("center", "cart");
//        return "index";
//    }

//    @RequestMapping("/addcart")
//    public String addcart(Model model, Cart cart) throws Exception {
//        cartService.register(cart);
//        return "redirect:/item/allcart?id=" + cart.getCust_id();
//    }
//
//    @RequestMapping("/delcart")
//    public String delcart(Model model, Integer id, HttpSession session) throws Exception {
//        cartService.remove(id);
//        if (session != null) {
//            Cust cust = (Cust) session.getAttribute("logincust");
//            return "redirect:/item/allcart?id=" + cust.getId();
//        }
//        return "redirect:/";
//    }
}
