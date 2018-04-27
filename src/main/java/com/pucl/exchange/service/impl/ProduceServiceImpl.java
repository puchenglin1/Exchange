package com.pucl.exchange.service.impl;

import com.pucl.exchange.mapper.ProduceMapper;
import com.pucl.exchange.model.Resources;
import com.pucl.exchange.service.ProduecService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service("produceService")
public class ProduceServiceImpl  implements ProduecService {

    @Resource
    private ProduceMapper produceMapper;

    @Override
    public List<Map<String, Object>> getProduceList(Map<String, Object> params) {
        return null;
    }
}
