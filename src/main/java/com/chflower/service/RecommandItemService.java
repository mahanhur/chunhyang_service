package com.chflower.service;

import com.chflower.dto.RecommandItem;
import com.chflower.dto.Subs;
import com.chflower.frame.CHService;
import com.chflower.mapper.RecommandItemMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class RecommandItemService implements CHService<Integer, RecommandItem> {

    @Autowired
    RecommandItemMapper mapper;

    @Override
    public void register(RecommandItem recommandItem) throws Exception {

    }

    @Override
    public void remove(Integer integer) throws Exception {

    }

    @Override
    public void modify(RecommandItem recommandItem) throws Exception {

    }

    @Override
    public RecommandItem get(Integer integer) throws Exception {
        return null;
    }

    @Override
    public List<RecommandItem> get() throws Exception {
        return mapper.selectall();
    }
    public List<RecommandItem> getsubs() throws Exception {
        return mapper.selectsubs();
    }
    public List<RecommandItem> get100() throws Exception {
        return mapper.select100();
    }
    public List<RecommandItem> get300() throws Exception {
        return mapper.select300();
    }


}