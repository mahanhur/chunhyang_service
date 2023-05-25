package com.chflower.mapper;

import com.github.pagehelper.Page;
import com.chflower.dto.Item;
import com.chflower.frame.CHMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface ItemMapper extends CHMapper<Integer, Item> {
    Page<Item> getpage() throws Exception;
}
