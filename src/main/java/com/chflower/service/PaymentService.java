package com.chflower.service;

import com.chflower.dto.Payment;
import com.chflower.frame.CHService;
import com.chflower.mapper.PaymentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PaymentService implements CHService<Integer, Payment> {

    @Autowired
    PaymentMapper mapper;

    @Override
    public void register(Payment payment) throws Exception {
    }

    @Override
    public void remove(Integer pay_id) throws Exception {
        mapper.delete(pay_id);
    }

    @Override
    public void modify(Payment payment) throws Exception {

    }

    @Override
    public Payment get(Integer pay_id) throws Exception {
        return mapper.select(pay_id);
    }

    @Override
    public List<Payment> get() throws Exception {
        return mapper.selectall();
    }

    public void subsinsert(Payment payment) {
        mapper.subsinsert(payment);
    }
    public Payment selectsubsid(Integer subs_id) {
        return mapper.selectsubsid(subs_id);
    }

    public void iteminsert(Payment payment) {
        mapper.iteminsert(payment);
    }

    public Payment selectorderid(Integer order_id) {
        return mapper.selectorderid(order_id);
    }

}
