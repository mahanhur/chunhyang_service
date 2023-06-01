package com.chflower.service;

import com.chflower.dto.Bipumimg;
import com.chflower.frame.CHService;
import com.chflower.mapper.BipumimgMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class BipumimgService implements CHService<Integer, Bipumimg> {

    @Autowired
    BipumimgMapper mapper;


    /**
     * 등록 및 가입 진행
     * argument: Object
     * return: null
     *
     * @param bipumimg
     */
    @Override
    public void register(Bipumimg bipumimg) throws Exception {

    }

    @Override
    public void remove(Integer i) throws Exception {

    }

    @Override
    public void modify(Bipumimg bipumimg) throws Exception {

    }

    @Override
    public Bipumimg get(Integer i) throws Exception {
        return mapper.select(i);
    }

    @Override
    public List<Bipumimg> get() throws Exception {
        return mapper.selectall();
    }
}