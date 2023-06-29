package com.chflower.service;

import com.chflower.dto.Point;
import com.chflower.frame.CHService;
import com.chflower.mapper.PointMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PointService implements CHService<String, Point> {

    @Autowired
    PointMapper mapper;

    @Override
    public void register(Point point) throws Exception {
    }

    @Override
    public void remove(String cust_id) throws Exception {
    }

    @Override
    public void modify(Point point) throws Exception {
    }

    @Override
    public Point get(String cust_id) throws Exception {
        return mapper.select(cust_id);
    }

    @Override
    public List<Point> get() throws Exception {
        return mapper.selectall();
    }

    public void pluspoint(Point point) {
        mapper.pluspoint(point);
    }
    public void minuspoint(Point point) {
        mapper.minuspoint(point);
    }
    public List<Point> selectcust(String cust_id) {
        return mapper.selectcust(cust_id);
    }
    public Integer presentpoint(String cust_id) {
        return mapper.presentpoint(cust_id);
    }
}
