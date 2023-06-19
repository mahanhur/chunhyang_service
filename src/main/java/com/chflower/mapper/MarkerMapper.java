package com.chflower.mapper;

import com.chflower.dto.Marker;
import com.chflower.frame.CHMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface MarkerMapper extends CHMapper<Integer, Marker> {
    public List<Marker> getLoc(String loc);
}
