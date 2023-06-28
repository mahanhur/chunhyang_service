package com.chflower.mapper;

import com.chflower.dto.ItemReview;
import com.chflower.frame.CHMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface ItemReviewMapper extends CHMapper<String, ItemReview> {
    public List<ItemReview> getItemReview(Integer i) throws Exception;
    public ItemReview getAvgItemReview(Integer i) throws Exception;
    public List<ItemReview> dabalreview() throws Exception;
    public List<ItemReview> flowerreview() throws Exception;
    public List<ItemReview> bipumreview() throws Exception;
}
