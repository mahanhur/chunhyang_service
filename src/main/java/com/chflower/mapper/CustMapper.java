package com.chflower.mapper;

import com.github.pagehelper.Page;
import com.chflower.dto.Cust;
import com.chflower.frame.CHMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface CustMapper extends CHMapper<String, Cust> {
    public void withdraw(String cust_id) throws Exception;

    //    Page<Cust> getpage() throws Exception;

    public Cust selectphone(String phone) throws Exception;
    public Cust selectemail(String email) throws Exception;
}
