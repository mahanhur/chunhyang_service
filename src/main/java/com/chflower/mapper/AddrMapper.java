package com.chflower.mapper;

import com.chflower.dto.Addr;
import com.chflower.dto.Adm;
import com.chflower.frame.CHMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface AddrMapper extends CHMapper<Integer, Addr> {

    List<Addr> selectaddr(String cust_id);
}
