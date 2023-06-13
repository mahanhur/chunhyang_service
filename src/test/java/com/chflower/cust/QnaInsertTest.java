package com.chflower.cust;

import com.chflower.dto.Qna;
import com.chflower.service.QnaService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@Slf4j
@SpringBootTest
class QnaInsertTest {
    @Autowired
    QnaService service;
    @Test
    void contextLoads() {
        Qna qna = new Qna();
        try {
            service.register(qna);
            log.info("등록 정상");
        } catch (Exception e) {
            log.info("qna 등록 실패");
            e.printStackTrace();
            }
        }
    }
