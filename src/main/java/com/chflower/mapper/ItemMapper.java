package com.chflower.mapper;

import com.chflower.dto.Item;
import com.chflower.dto.Search;
import com.chflower.frame.CHMapper;
import com.github.pagehelper.Page;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface ItemMapper extends CHMapper<Integer, Item> {
    Page<Item> getpage() throws Exception;
    public Item select(Integer item_id);
    public List<Item> getcate(Double cate);
    public List<Item> gettype(String type);
    List<Item> getSearch(Search search) throws Exception;
    List<Item> lineuptotal() throws Exception;
    List<Item> lineuphigh() throws Exception;
    List<Item> lineuplow() throws Exception;
    List<Item> lineupreview() throws Exception;
}
