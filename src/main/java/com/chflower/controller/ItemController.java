package com.chflower.controller;

import com.chflower.dto.*;
import com.chflower.service.*;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
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
    @Autowired
    ItemReviewService itemReviewService;
    @Autowired
    RecommandItemService recommandItemService;
    @Autowired
    AddrService addrService;
    @Autowired
    PointService pointService;
    @Autowired
    EntryCountService entryCountService;


    String dir = "item/";


    //127.0.0.1/item
    @RequestMapping("")
    public String main(Model model) {
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "center");
        return "index";
    }


    @RequestMapping("/all")
    public String all(Model model) throws Exception {
        List<Item> list = null;
        try {
            list = itemService.get();
        } catch (Exception e) {
            throw new Exception("시스템장애:ERORR002");
        }


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

        List<Itemimg> ilist = new ArrayList<>();
       for (Itemimg obj : list) {
            if (obj.getItem_id() == item_id) {
                ilist.add(obj);
            }
        }
        List<ItemReview> reviewlist = null;
        reviewlist = itemReviewService.getItemReview(item_id);
        ItemReview itemReview = itemReviewService.getAvgItemReview(item_id);
        model.addAttribute("reviewlist",reviewlist);
        model.addAttribute("itemReview",itemReview);

        List<RecommandItem> recommandItemList= new ArrayList<>();
        recommandItemList = recommandItemService.get();

        model.addAttribute("recommandlist", recommandItemList);
        /* ▼리뷰등록을 위해서 item_id를 모델에 넣어서 detail.jsp화면에 던져서 form에 넣어 둔다 */
        model.addAttribute("item_id", item_id);

        model.addAttribute("detail", item);
        model.addAttribute("img", itemimg);
        model.addAttribute("ilist", ilist);
        model.addAttribute("center", dir+"detail");

        // 이전 카운트 값을 가져옴
        int previousCount = entryCountService.getCount(item_id);

        // 카운트 증가
        int newCount = entryCountService.incrementCount(item_id);

        // 로그 작성
        log.info("'" +item_id+"'" + "," + newCount);
        return "index";
    }
    @RequestMapping("/register_reviewimpl")
    public String registerreviewimpl(ItemReview bipumreview, Integer item_id,String cust_id) throws Exception {
        bipumreview.setCust_id(cust_id);
        bipumreview.setItem_id(item_id);
        itemReviewService.register(bipumreview);
        return "redirect:/bipum/detail?item_id="+bipumreview.getItem_id();
    }
    @RequestMapping("/checkout")
    public String checkout(Model model, HttpSession session, Integer item_id, String cust_id, Integer cnt) throws Exception {

        Cust cust = (Cust) session.getAttribute("logincust");
        if(cust != null) {
            List<Addr> addrlist;
            addrlist = addrService.getaddr(cust_id);
            model.addAttribute("addrlist",addrlist);

            Item item = itemService.get(item_id);
            model.addAttribute("item", item);


            Integer point = pointService.presentpoint(cust_id);
            model.addAttribute("point", point);

            int total = item.getItem_price() * cnt;
            model.addAttribute("totalprice",total);

        } else {
            return "redirect:/cust/login";
        }

        model.addAttribute("inputcnt",cnt);
        model.addAttribute("center",dir+"checkout");
        return "index";
    }


    @RequestMapping("/dabal")
    public String dabal(Model model) throws Exception {
        List<Item> list = null;
        list = itemService.getCate(100.0);
        model.addAttribute("ilist", list);
        model.addAttribute("center", dir + "all");
        return "index";
    }
    @RequestMapping("/flower")
    public String flower(Model model) throws Exception {
        List<Item> list = null;
        list = itemService.getCate(200.0);
        model.addAttribute("ilist", list);
        model.addAttribute("center", dir + "all");
        return "index";
    }

    @RequestMapping("/sortdabal")
    public String sortdabal(Model model, String dabaltype) throws Exception {
        List<Item> list = null;
        list = itemService.getType(dabaltype);
        model.addAttribute("ilist", list);
        model.addAttribute("center", dir + "all");
        return "index";
    }

    @RequestMapping("/sortflower")
    public String sortflower(Model model, String flowertype) throws Exception {
        List<Item> list = null;
        list = itemService.getType(flowertype);
        model.addAttribute("ilist", list);
        model.addAttribute("center", dir + "all");
        return "index";
    }
    @RequestMapping("/lineuptotal")
    public String lineuptotal(Model model) throws Exception {
        List<Item> list = null;
        list = itemService.lineuptotal();
        log.info("============================="+ list.toString());
        model.addAttribute("ilist", list);
        model.addAttribute("center", dir + "all");
        return "index";
    }
    @RequestMapping("/lineuplow")
    public String lineuplow(Model model) throws Exception {
        List<Item> list = null;
        list = itemService.lineuplow();
        log.info("============================="+ list.toString());
        model.addAttribute("ilist", list);
        model.addAttribute("center", dir + "all");
        return "index";
    }
    @RequestMapping("/lineuphigh")
    public String lineuphigh(Model model) throws Exception {
        List<Item> list = null;
        list = itemService.lineuphigh();
        log.info("============================="+ list.toString());
        model.addAttribute("ilist", list);
        model.addAttribute("center", dir + "all");
        return "index";
    }
    @RequestMapping("/lineupreview")
    public String lineupreview(Model model) throws Exception {
        List<Item> list = null;
        list = itemService.lineupreview();
        log.info("============================="+ list.toString());
        model.addAttribute("ilist", list);
        model.addAttribute("center", dir + "all");
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
