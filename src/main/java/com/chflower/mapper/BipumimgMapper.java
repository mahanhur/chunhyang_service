package com.chflower.mapper;

import com.chflower.dto.Bipumimg;
import com.chflower.frame.CHMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper


public interface BipumimgMapper extends CHMapper<Integer, Bipumimg> {
}
