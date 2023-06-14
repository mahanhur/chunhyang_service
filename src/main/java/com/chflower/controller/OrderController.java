package com.chflower.controller;

import com.chflower.dto.*;
import com.chflower.service.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    ItemService itemService;
    @Autowired
    ItemimgService itemimgService;
    @Autowired
    ItemReviewService itemReviewService;
    @Autowired
    RecommandItemService recommandItemService;
    @Autowired
    AddrService addrService;
    @Autowired
    OrderService orderService;
    @Autowired
    PaymentService paymentService;
    @Autowired
    PointService pointService;
//    @Autowired
//    CartService cartService;


    String dir = "order/";


    //127.0.0.1/item
    @RequestMapping("")
    public String main(Model model) {
        model.addAttribute("center", dir + "center");
        return "index";
    }


    @RequestMapping("/all")
    public String all(Model model, HttpSession session, String cust_id) throws Exception {
        log.info("+++++++++++++++++++++"+cust_id);
        Cust cust = (Cust) session.getAttribute("logincust");

        List<Order> list = null;
        list = orderService.getMyorder(cust_id);
        log.info("+++++++++++++++++++++"+list);
        model.addAttribute("olist", list);

        model.addAttribute("center", dir + "all");
        return "index";
    }

    @RequestMapping("/detail")
    public String detail(Model model, HttpSession session, int order_id) throws Exception {

        Cust cust = (Cust) session.getAttribute("logincust");
        Order order = orderService.get(order_id);
        model.addAttribute("order", order);

        Orderdetail orderdetail;
        List<Orderdetail> list = new ArrayList<>();
        log.info("+++++++++++++++++++++"+order_id);
        list = orderService.getOrderdetail(order_id);
        log.info("+++++++++++++++++++++++++"+list.toString());

        model.addAttribute("dlist", list);
        model.addAttribute("center", dir+"detail");
        return "index";
    }


    @RequestMapping("/success")
    public String success(Model model,HttpSession session, int item_id, int order_amount, int minus_point, int pay_amount, int addr_id) throws Exception {
        Cust cust = (Cust) session.getAttribute("logincust");
        String cust_id = cust.getCust_id();
        String order_name = cust.getCust_name();
        String order_phone = cust.getPhone();

        Order order = new Order();
            //order 적재
            orderService.register(order);
            int order_id = orderService.getlast();
            model.addAttribute("order_id", order_id);
            //payment 적재
            Payment payment = new Payment(order_id, 1, 1);
            paymentService.iteminsert(payment);
            //point 적재
            if (minus_point != 0) {
                Point point = new Point(cust_id, minus_point);
                pointService.minuspoint(point);
            }
            //orderdetail 적재



        model.addAttribute("center",dir+"success");
        return "index";
    }

    @RequestMapping("/fail")
    public String fail(Model model, String msg){
        model.addAttribute("msg", msg);
        model.addAttribute("center",dir+"fail");
        return "index";
    }
}
