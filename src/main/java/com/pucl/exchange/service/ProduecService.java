package com.pucl.exchange.service;

import com.pucl.exchange.model.Produce;

import java.util.List;
import java.util.Map;

public interface ProduecService  {
    public List<Map<String,Object>> getProduceList(Map<String, Object> params);
}
