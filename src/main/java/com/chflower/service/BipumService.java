package com.chflower.service;

import com.chflower.dto.Bipum;
import com.chflower.dto.Item;
import com.chflower.frame.CHService;
import com.chflower.mapper.BipumMapper;
import com.github.pagehelper.PageHelper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class BipumService implements CHService<Integer, Bipum> {

    @Autowired
    BipumMapper mapper;

    /**
     * 등록 및 가입 진행
     * argument: Object
     * return: null
     *
     * @param bipum
     */
    @Override
    public void register(Bipum bipum) throws Exception {
        mapper.insert(bipum);
    }

    @Override
    public void remove(Integer i) throws Exception {
        mapper.delete(i);
    }

    @Override
    public void modify(Bipum bipum) throws Exception {
        mapper.update(bipum);
    }

    @Override
    public Bipum get(Integer i) throws Exception {
        return mapper.select(i);
    }

    @Override
    public List<Bipum> get() throws Exception {
        return mapper.selectall();
    }

    public List<Item> getCate(Double cate) throws Exception {
        return mapper.getcate(cate);
    }
    public List<Item> getType(String type) throws Exception {
        return mapper.gettype(type);
    }

    public List<Bipum> get(int pageNo) throws Exception {
        PageHelper.startPage(pageNo, 3); // 3: 한화면에 출력되는 개수
        return mapper.getpage();
    }
}