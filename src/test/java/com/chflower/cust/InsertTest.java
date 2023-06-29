package com.chflower.cust;

import com.chflower.dto.Cust;
import com.chflower.dto.Point;
import com.chflower.service.CustService;
import com.chflower.service.PointService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.dao.DuplicateKeyException;

@Slf4j
@SpringBootTest
class InsertTest {
    @Autowired
    PointService service;
    @Test
    void contextLoads() throws Exception {
        Point point = new Point("id96", 100);
        Point minuspoint = new Point("id96", 0,100);
        service.minuspoint(minuspoint);
        service.presentpoint("id96");
    }
}
