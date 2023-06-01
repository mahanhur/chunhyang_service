package com.chflower.Itemreview;

import com.chflower.service.CustService;
import com.chflower.service.ItemReviewService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class SelectTest {
    @Autowired
    ItemReviewService service;
    @Test
    void contextLoads() {
        try {
            service.getItemReview(404);

//            [06-01 17:47:07] INFO  jdbc.resultsettable -
//|----------|--------|--------|-------------|----------------|-----------|----------------------|-------------|
//|review_id |cust_id |item_id |review_title |review_content  |review_img |review_rdata          |review_score |
//|----------|--------|--------|-------------|----------------|-----------|----------------------|-------------|
//|3         |id11    |404     |이뻐유?         |쿠폰 잘 썻어요        |null       |2023-06-01 17:42:52.0 |3.0          |
//|2         |id11    |404     |배송이빠르네요?     |꽃도 이뻐요 와이프가 좋아함 |null       |2023-06-01 17:42:29.0 |1.0          |
//|1         |id11    |404     |뭐함요?         |하하하             |null       |2023-06-01 17:41:56.0 |1.0          |
//|----------|--------|--------|-------------|----------------|-----------|----------------------|-------------|
        } catch (Exception e) {
            log.info("에러..");
            //e.printStackTrace();
        }
    }

}
