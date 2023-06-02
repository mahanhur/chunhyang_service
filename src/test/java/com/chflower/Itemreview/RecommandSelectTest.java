package com.chflower.Itemreview;

import com.chflower.dto.Bipum;
import com.chflower.dto.RecommandItem;
import com.chflower.service.BipumService;
import com.chflower.service.RecommandItemService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@SpringBootTest
class RecommandSelectTest {
    @Autowired
    RecommandItemService recommandItemService;
    BipumService bipumService;
    @Test
    void contextLoads() {
        try {
            recommandItemService.get();


        } catch (Exception e) {
            log.info("에러..");
            //e.printStackTrace();
        }
    }}
/*
[06-02 14:14:25] INFO  jdbc.resultsettable -
        |--------|------------|-----------------|----------|---------|-----------|---------------------------|----------------------|-------------|------------|------------|---------|
        |item_id |category_id |item_img         |item_name |item_cnt |item_price |item_content               |item_rdate            |flower_color |flower_type |flower_size |main_img |
        |--------|------------|-----------------|----------|---------|-----------|---------------------------|----------------------|-------------|------------|------------|---------|
        |302     |300.0       |C_vase_S.jpg     |작은 꽃병     |5        |3000       |작아서 너무 큐티한 꽃병!!            |2023-06-01 15:05:26.0 |null         |null        |null        |1        |
        |303     |300.0       |C_vase_M.jpg     |중간 꽃병     |11       |5000       |작지도 거대하지도 않아서 딱 좋아!        |2023-06-01 15:05:28.0 |null         |null        |null        |1        |
        |304     |300.0       |C_1_VASE_S_1.JPG |소프트 라인 화병 |11       |5000       |보면볼수록 기분이가 좋아지는 고운 라인의 꽃병! |2023-06-01 15:05:31.0 |null         |null        |null        |1        |
        |401     |400.0       |C_biryo.jpg      |비료        |50       |1000       |시골에서 가져온 진자 비료             |2023-06-01 15:05:44.0 |null         |null        |null        |1        |
        |--------|------------|-----------------|----------|---------|-----------|---------------------------|----------------------|-------------|------------|------------|---------|*/
