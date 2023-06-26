package com.chflower.service;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

@Service
public class EntryCountService {
    private Map<Integer, AtomicInteger> entryCountMap = new HashMap<>();
    private Map<String, AtomicInteger> entryCountMap2 = new HashMap<>();

    public int getCount(int subsitemId) {
        return entryCountMap.getOrDefault(subsitemId, new AtomicInteger(0)).get();
    }

    public int incrementCount(int subsitemId) {
        AtomicInteger count = entryCountMap.computeIfAbsent(subsitemId, k -> new AtomicInteger(0));
        return count.incrementAndGet();
    }

    public int getCountdir(String dir) {
        return entryCountMap2.getOrDefault(dir, new AtomicInteger(0)).get();
    }

    public int incrementCountdir(String dir) {
        AtomicInteger count = entryCountMap2.computeIfAbsent(dir, k -> new AtomicInteger(0));
        return count.incrementAndGet();
    }

    public void setCount(int subsitemId, int count) {
        AtomicInteger atomicCount = entryCountMap.computeIfAbsent(subsitemId, k -> new AtomicInteger(0));
        atomicCount.set(count);
    }

    public int getCountWithoutId() {
        return entryCountMap.getOrDefault(0, new AtomicInteger(0)).get();
    }

    public int incrementCountWithoutId() {
        AtomicInteger count = entryCountMap.computeIfAbsent(0, k -> new AtomicInteger(0));
        return count.incrementAndGet();
    }
}