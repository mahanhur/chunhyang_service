package com.chflower.Item;

import com.chflower.dto.Item;
import com.chflower.service.ItemService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DuplicateKeyException;

@Slf4j
@SpringBootTest
class InsertTests {
    @Autowired
    ItemService service;

    @Test
    void contextLoads() {
        Item obj = new Item();
        try {
            service.register(obj);
            log.info("등록정상...");
        } catch (Exception e) {
            if (e instanceof DuplicateKeyException) {
                log.info(".....상품ID가 중복되었습니다.......");
            } else {
                log.info("......시스템장애입니다.........");
                e.printStackTrace();
            }

        }
    }
}
