package com.chflower.mapper;

import com.chflower.dto.Itemimg;
import com.chflower.frame.CHMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper


public interface BipumimgMapper extends CHMapper<Integer, Itemimg> {
}
