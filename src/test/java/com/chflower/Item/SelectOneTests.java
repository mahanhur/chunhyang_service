package com.chflower.Item;

import com.chflower.dto.Item;
import com.chflower.service.ItemService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class SelectOneTests {
    @Autowired
    ItemService service;

    @Test
    void contextLoads() {
        Item item = null;

        try {
            item = service.get(201);

        } catch (Exception e) {

            log.info("......에러다.........");
            e.printStackTrace();
        }

    }
}

