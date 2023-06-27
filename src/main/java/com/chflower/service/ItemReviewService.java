package com.chflower.service;

import com.chflower.dto.ItemReview;
import com.chflower.dto.Qna;
import com.chflower.frame.CHService;
import com.chflower.mapper.ItemReviewMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class ItemReviewService implements CHService<String, ItemReview> {
    @Autowired
    ItemReviewMapper mapper;

    /**
     * 등록 및 가입 진행
     * argument: Object
     * return: null
     *
     * @param itemReview
     */
    @Override
    public void register(ItemReview itemReview) throws Exception {
        mapper.insert(itemReview);
    }

    @Override
    public void remove(String s) throws Exception {

    }

    @Override
    public void modify(ItemReview itemReview) throws Exception {

    }

    @Override
    public ItemReview get(String s) throws Exception {
        return null;
    }

    public ItemReview getAvgItemReview(Integer i) throws Exception {
        return mapper.getAvgItemReview(i);
    }

    @Override
    public List<ItemReview> get() throws Exception {
        return null;
    }
    public List<ItemReview> getItemReview(Integer i) throws Exception {
        return mapper.getItemReview(i);
    }

    public List<ItemReview> dabalreview() throws Exception {
        return mapper.dabalreview();
    }
    public List<ItemReview> flowerreview() throws Exception {
        return mapper.flowerreview();
    }
    public List<ItemReview> bipumreview() throws Exception {
        return mapper.bipumreview();
    }

}
