package com.chflower.cust;

import com.chflower.dto.Cust;
import com.chflower.service.CustService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class UpdateTest {
    @Autowired
    CustService service;
    @Test
    void contextLoads() {
        try {
            service.modify(new Cust("test01", "김하연", "pwd01", "01022223333", 20, "test@naver.com", "N", null));
        } catch (Exception e) {
            log.info("오류");
        }

    }

}
