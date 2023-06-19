package com.chflower.mapper;

import com.chflower.dto.Delinfo;
import com.chflower.frame.CHMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface DelinfoMapper extends CHMapper<Integer, Delinfo> {
    public Delinfo subsselect(Integer subsdetail_id);
    public void orderinsert(Delinfo delinfo);
}
