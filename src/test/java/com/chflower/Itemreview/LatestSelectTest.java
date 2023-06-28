package com.chflower.Itemreview;

import com.chflower.service.ItemReviewService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class LatestSelectTest {
    @Autowired
    ItemReviewService service;
    @Test
    void contextLoads() {
        try {
            service.dabalreview();

        } catch (Exception e) {
            log.info("에러..");
            //e.printStackTrace();
        }
    }

}
//[06-27 16:04:09] INFO  jdbc.resultsettable -
//        |----------|--------|--------|-------------|---------------|-----------|----------------------|-------------|----------------------|-----------------|
//        |review_id |cust_id |item_id |review_title |review_content |review_img |review_rdata          |review_score |item_img              |item_name        |
//        |----------|--------|--------|-------------|---------------|-----------|----------------------|-------------|----------------------|-----------------|
//        |3         |id11    |234     |너무 이뻐요       |가성비 최고         |null       |2023-06-23 15:52:44.0 |5            |C_vase_S.jpg          |가성비 갑!! 저렴한 화병   |
//        |23        |mahan   |237     |예뻐요          |짱짱맨            |null       |2023-06-26 13:28:44.0 |5            |C_vase_L.jpg          |하드 라인 화병         |
//        |24        |yong    |215     |조항요          |조하요            |null       |2023-06-26 14:05:05.0 |5            |B_jangmi_Red_M_1.jpg  |파이어웍스 장미         |
//        |21        |mahan   |214     |그냥 그럼        |예쁘네요;          |null       |2023-06-26 13:25:42.0 |3            |B_jangmi_Pink_M_1.jpg |사랑을 맹세할 때, 하젤 장미 |
//        |22        |mahan   |214     |리뷰쓴 이후       |체크             |null       |2023-06-26 13:26:57.0 |5            |B_jangmi_Pink_M_1.jpg |사랑을 맹세할 때, 하젤 장미 |
//        |----------|--------|--------|-------------|---------------|-----------|----------------------|-------------|----------------------|-----------------|
