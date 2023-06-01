package com.chflower.mapper;

import com.chflower.dto.Bipum;
import com.chflower.frame.CHMapper;
import com.github.pagehelper.Page;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface BipumMapper extends CHMapper<Integer, Bipum> {
    Page<Bipum> getpage() throws Exception;
}
