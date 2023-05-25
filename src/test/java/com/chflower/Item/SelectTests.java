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
class SelectTests {
    @Autowired
    ItemService service;

    @Test
    void contextLoads() {
        List<Item> list = null;

        try {
            list = service.get();

//			for(Item obj:list){
//				log.info(obj.toString());
        } catch (Exception e) {

            log.info("......에러다.........");
            e.printStackTrace();
        }

    }
}

