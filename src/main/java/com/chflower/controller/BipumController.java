package com.chflower.controller;

import com.chflower.dto.*;
import com.chflower.service.*;
import com.chflower.util.FileUploadUtil;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/bipum")
public class BipumController {
    @Autowired
    BipumService bipumService;
    @Autowired
    BipumimgService bipumimgService;
    @Autowired
    ItemReviewService itemReviewService;
    @Autowired
    CustService custservice;
    @Autowired
    RecommandItemService recommandItemService;
    @Autowired
    EntryCountService entryCountService;
//    @Autowired
//    CartService cartService;

    String dir = "bipum/";

    //127.0.0.1/item
    @RequestMapping("")
    public String main(Model model) {
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "center");
        return "index";
    }

    @RequestMapping("/detail")
    public String detail(Model model,Integer item_id, Bipum bipum, Bipumimg bipumimg) throws Exception {
        bipum = bipumService.get(item_id);
        List<Bipumimg> list= new ArrayList<>();
        list = bipumimgService.get();
        List<Bipumimg> bipumlist = new ArrayList<>();
       for (Bipumimg obj : list) {
            if (obj.getItem_id() == item_id) {
                bipumlist.add(obj);
            }
        }
        List<ItemReview> reviewlist = null;
        reviewlist = itemReviewService.getItemReview(item_id);
        ItemReview itemReview = itemReviewService.getAvgItemReview(item_id);
        model.addAttribute("reviewlist",reviewlist);
        model.addAttribute("itemReview",itemReview);

        List<RecommandItem> recommandItemList= new ArrayList<>();
        recommandItemList = recommandItemService.get300();

        model.addAttribute("recommandlist", recommandItemList);
        /* ▼리뷰등록을 위해서 item_id를 모델에 넣어서 detail.jsp화면에 던져서 form에 넣어 둔다 */
        model.addAttribute("item_id", item_id);
        model.addAttribute("detail", bipum);
        model.addAttribute("img", bipumimg);
        model.addAttribute("bipumlist", bipumlist);
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
    @RequestMapping("/hwabyung")
    public String hwabyung(Model model) throws Exception {
        List<Item> list = null;
        list = bipumService.getCate(300.0);
        model.addAttribute("ilist", list);
        model.addAttribute("center", dir + "all");
        return "index";
    }
    @RequestMapping("/bipum")
    public String bipum(Model model) throws Exception {
        List<Item> list = null;
        list = bipumService.getCate(400.0);
        model.addAttribute("ilist", list);
        model.addAttribute("center", dir + "all");
        return "index";
    }
}
