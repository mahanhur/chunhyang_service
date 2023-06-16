package com.chflower.mapper;


import com.chflower.dto.MarkerDesc;
import com.chflower.frame.CHMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface MarkerDescMapper extends CHMapper<Integer, MarkerDesc> {
    public List<MarkerDesc> getmarkerdesc(int id) throws Exception;
}
