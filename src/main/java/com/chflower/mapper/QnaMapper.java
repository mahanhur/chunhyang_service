package com.chflower.mapper;

import com.chflower.dto.Qna;
import com.chflower.frame.CHMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface QnaMapper extends CHMapper<String, Qna> {
    public List<Qna> getQna(String i) throws Exception;
}
