package com.chflower.service;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

@Service
public class EntryCountService {
    private Map<Integer, AtomicInteger> entryCountMap = new HashMap<>();

    public int getCount(int subsitemId) {
        return entryCountMap.getOrDefault(subsitemId, new AtomicInteger(0)).get();
    }

    public int incrementCount(int subsitemId) {
        AtomicInteger count = entryCountMap.computeIfAbsent(subsitemId, k -> new AtomicInteger(0));
        return count.incrementAndGet();
    }

    public void setCount(int subsitemId, int count) {
        AtomicInteger atomicCount = entryCountMap.computeIfAbsent(subsitemId, k -> new AtomicInteger(0));
        atomicCount.set(count);
    }
}