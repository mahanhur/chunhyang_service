package com.chflower.service;

import com.chflower.dto.Subsdetail;
import com.chflower.frame.CHService;
import com.chflower.mapper.SubsdetailMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SubsdetailService implements CHService<Integer, Subsdetail> {

    @Autowired
    SubsdetailMapper mapper;

    @Override
    public void register(Subsdetail subsdetail) throws Exception {
        mapper.insert(subsdetail);
    }

    @Override
    public void remove(Integer subsdetail_id) throws Exception {
        mapper.delete(subsdetail_id);
    }

    @Override
    public void modify(Subsdetail subsdetail) throws Exception {
        mapper.update(subsdetail);
    }

    @Override
    public Subsdetail get(Integer subsdetail_id) throws Exception {
        return mapper.select(subsdetail_id);
    }

    @Override
    public List<Subsdetail> get() throws Exception {
        return mapper.selectall();
    }

    public void dateupdate(Subsdetail subsdetail) {
        mapper.dateupdate(subsdetail);
    }
    public void custupdate(Subsdetail subsdetail) {
        mapper.custupdate(subsdetail);
    }
    public List<Subsdetail> get2(Integer subs_id) throws Exception {
        return mapper.get2(subs_id);
    }
    public Subsdetail get3(Integer subsdetail_id) throws Exception {
        return mapper.get3(subsdetail_id);
    }
    public Integer getlast() {
        return mapper.getlast();
    }

}
