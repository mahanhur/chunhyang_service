package com.chflower.mapper;

import com.chflower.dto.Order;
import com.chflower.dto.Orderdetail;
import com.chflower.frame.CHMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface OrderMapper extends CHMapper<Integer, Order> {
    public Integer getlast();

    public List<Order> getmyorder(String cust_id);

    public void insertdetail(Orderdetail orderdetail);
    public List<Orderdetail> getorderdetail(int order_id);
    public List<Orderdetail> getallorderdetail(String cust_id);
}
