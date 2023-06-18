package com.chflower.mapper;

import com.chflower.dto.Payment;
import com.chflower.frame.CHMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface PaymentMapper extends CHMapper<Integer, Payment> {
    public void subsinsert(Payment payment);
    public void iteminsert(Payment payment);
    public Payment selectsubsid(Integer subs_id);
    public Payment selectorderid(Integer order_id);
}
