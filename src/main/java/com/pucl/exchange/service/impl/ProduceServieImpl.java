package com.pucl.exchange.service.impl;

import com.pucl.exchange.model.Produce;
import com.pucl.exchange.service.ProduecService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("produceServie")
public class ProduceServieImpl implements ProduecService {

    @Override
    public List<Map<String,Object>> getProduceList(Map<String,Object> params){
        return null;
    }

}
