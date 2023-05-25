package com.chflower.Item;

import com.chflower.dto.Item;
import com.chflower.service.ItemService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@Slf4j
@SpringBootTest
class DeleteTests {
    @Autowired
    ItemService service;

    @Test
    void contextLoads() {
        List<Item> list = null;

        try {
            service.remove(200);
            log.info("삭제완료");
        } catch (Exception e) {

            log.info("......에러다.........");
            e.printStackTrace();
        }

    }
}

