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
    }

}
/*            List<Bipum> list = new ArrayList<>();
            list = bipumService.get();
            List<Integer> RecommandItem_id= new ArrayList<>();
            for (Bipum obj : list) {
                RecommandItem_id.add(obj.getItem_id());
            }
            log.info(RecommandItem_id.toString());
//            recommandItemService.get();*/