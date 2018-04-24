package com.pucl.exchange.mapper;

import com.pucl.exchange.model.Resources;
import com.pucl.exchange.util.MyMapper;

import java.util.List;
import java.util.Map;

public interface ResourcesMapper extends MyMapper<Resources> {

    public List<Resources> queryAll();

    public List<Resources> loadUserResources(Map<String, Object> map);

    public List<Resources> queryResourcesListWithSelected(Integer rid);
}