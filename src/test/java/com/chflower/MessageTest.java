package com.chflower;

import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.MessageSource;

import java.util.Locale;

@Slf4j
@SpringBootTest
public class MessageTest {
    @Autowired
    private MessageSource messageSource;

    @Test
    void contextLoads() {
        String text = messageSource.getMessage("site.title", null, Locale.US);
        log.info("----------------------------------");
        log.info(text);
        log.info("----------------------------------");
    }
}