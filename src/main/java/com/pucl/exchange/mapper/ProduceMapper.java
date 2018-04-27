package com.pucl.exchange.mapper;

import com.pucl.exchange.util.MyMapper;

import java.util.List;
import java.util.Map;

public interface ProduceMapper extends MyMapper<Map> {
    /**
     * 获取商品列表
     * @return
     */
    public List<Map<String,Object>> getProduceList(Map<String,Object> params);


}