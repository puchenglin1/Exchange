package com.pucl.exchange.mapper;

import com.pucl.exchange.model.Produce;
import com.pucl.exchange.util.MyMapper;

import java.util.List;
import java.util.Map;

public interface ProduceMapper extends MyMapper<Produce> {
    /**
     * 获取商品列表
     * @return
     */
    public List<Map<String,Object>> getProduceList(Map<String, Object> params);


}
