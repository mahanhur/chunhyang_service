package com.chflower.mapper;

import com.chflower.dto.RecommandItem;
import com.chflower.frame.CHMapper;
import com.github.pagehelper.Page;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface RecommandItemMapper extends CHMapper<Integer, RecommandItem> {
    Page<RecommandItem> getpage() throws Exception;
}
