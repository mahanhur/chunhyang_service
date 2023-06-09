package com.chflower.mapper;

import com.chflower.dto.Subsdetail;
import com.chflower.frame.CHMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface SubsdetailMapper extends CHMapper<Integer, Subsdetail> {
    public void dateupdate(Subsdetail subsdetail);
    public void custupdate(Subsdetail subsdetail);
    public List<Subsdetail> get2(Integer subs_id) ;
    public Subsdetail get3(Integer subsdetail_id) ;

    public Integer getlast();


}
