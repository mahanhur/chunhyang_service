package com.chflower.mapper;

import com.chflower.dto.Sales;
import com.chflower.frame.CHMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface SalesMapper extends CHMapper<String, Sales> {
}
