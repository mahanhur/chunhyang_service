package com.chflower.cust;

import com.chflower.dto.Qna;
import com.chflower.service.QnaService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@Slf4j
@SpringBootTest
class QnaSelectTest {
    @Autowired
    QnaService service;
    @Test
    void contextLoads() {
        List<Qna> qna =null;
        try {
            qna = service.getQna("id11");
            log.info(qna.toString());
        } catch (Exception e) {
            log.info("에러--------------------------------------------------------..");
            //e.printStackTrace();
        }
    }

}
