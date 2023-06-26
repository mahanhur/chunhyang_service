package com.chflower.service;

import com.chflower.dto.Item;
import com.chflower.dto.Search;
import com.chflower.frame.CHService;
import com.chflower.mapper.ItemMapper;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class ItemService implements CHService<Integer, Item> {

    @Autowired
    ItemMapper mapper;

    /**
     * 등록 및 가입 진행
     * argument: Object
     * return: null
     *
     * @param item
     */
    @Override
    public void register(Item item) throws Exception {
        mapper.insert(item);
    }

    @Override
    public void remove(Integer i) throws Exception {
        mapper.delete(i);
    }

    @Override
    public void modify(Item item) throws Exception {
        mapper.update(item);
    }

    @Override
    public Item get(Integer i) throws Exception {
        return mapper.select(i);
    }

    @Override
    public List<Item> get() throws Exception {
        return mapper.selectall();
    }
    public List<Item> getCate(Double cate) throws Exception {
        return mapper.getcate(cate);
    }
    public List<Item> getType(String type) throws Exception {
        return mapper.gettype(type);
    }
    public List<Item> getSearch(Search search) throws Exception {
        return mapper.getSearch(search);
    }
    public Page<Item> getPage(int pageNo) throws Exception {
        PageHelper.startPage(pageNo, 3); // 3: 한화면에 출력되는 개수
        return mapper.getpage();
    }
    public List<Item> lineuptotal() throws Exception {
        return mapper.lineuptotal();
    }
    public List<Item> lineuphigh() throws Exception {
        return mapper.lineuphigh();
    }
    public List<Item> lineuplow() throws Exception {
        return mapper.lineuplow();
    }
    public List<Item> lineupreview() throws Exception {
        return mapper.lineupreview();
    }

}