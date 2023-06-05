package com.chflower.mapper;

import com.chflower.dto.Point;
import com.chflower.frame.CHMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface PointMapper extends CHMapper<String, Point> {
    public void pluspoint(Point point);
    public void minuspoint(Point point);
    public Integer presentpoint(String cust_id);
}
