package com.chflower.mapper;

import com.chflower.dto.Item;
import com.chflower.frame.CHMapper;
import com.github.pagehelper.Page;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface ItemMapper extends CHMapper<Integer, Item> {
    Page<Item> getpage() throws Exception;
    public List<Item> getcate(Double cate);
    public List<Item> gettype(String type);
}
