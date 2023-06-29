package com.chflower.service;

import com.chflower.dto.Order;
import com.chflower.dto.Orderdetail;
import com.chflower.frame.CHService;
import com.chflower.mapper.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderService implements CHService<Integer, Order> {

    @Autowired
    OrderMapper mapper;

    @Override
    public void register(Order order) throws Exception {
        mapper.insert(order);
    }

    @Override
    public void remove(Integer order_id) throws Exception {
        mapper.delete(order_id);
    }

    @Override
    public void modify(Order order) throws Exception {

    }

    @Override
    public Order get(Integer order_id) throws Exception {
        return mapper.select(order_id);
    }

    @Override
    public List<Order> get() throws Exception {
        return mapper.selectall();
    }
    public Integer getlast() {
        return mapper.getlast();
    }

    public void registerdetail(Orderdetail orderdetail) throws Exception {
        mapper.insertdetail(orderdetail);
    }

    public List<Order> getMyorder(String cust_id){
        return mapper.getmyorder(cust_id);
    }
    public List<Orderdetail> getOrderdetail(int order_id){
        return mapper.getorderdetail(order_id);
    }
    public List<Orderdetail> getallorderdetail(String cust_id){
        return mapper.getallorderdetail(cust_id);
    }

}
