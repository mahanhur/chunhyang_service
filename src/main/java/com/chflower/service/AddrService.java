package com.chflower.service;

import com.chflower.dto.Addr;
import com.chflower.frame.CHService;
import com.chflower.mapper.AddrMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class AddrService implements CHService<Integer, Addr> {

    @Autowired
    AddrMapper mapper;
    @Override
    public void register(Addr addr) throws Exception {
        mapper.insert(addr);
    }

    @Override
    public void remove(Integer addr_id) throws Exception {
        mapper.delete(addr_id);
    }

    @Override
    public void modify(Addr addr) throws Exception {
        mapper.update(addr);
    }

    @Override
    public Addr get(Integer addr_id) throws Exception {
        return mapper.select(addr_id);
    }

    @Override
    public List<Addr> get() throws Exception {
        return mapper.selectall();
    }
    public List<Addr> getaddr(String cust_id) throws Exception {
        return mapper.selectaddr(cust_id);
    }
}
