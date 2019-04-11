package com.pucl.exchange.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pucl.exchange.mapper.ProduceMapper;
import com.pucl.exchange.model.Message;
import com.pucl.exchange.model.Produce;
import com.pucl.exchange.model.Resources;
import com.pucl.exchange.model.UserAddress;
import com.pucl.exchange.service.ProduecService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service("produceServie")
public class ProduceServieImpl implements ProduecService {
    Logger log=Logger.getLogger(ProduceServieImpl.class);

    @Resource
    ProduceMapper produceMapper;

    @Override
    public PageInfo<Map<String,Object>> getProduceList(Map<String,Object> params){
        PageHelper.startPage((Integer) params.get("start"),(Integer)params.get("length"));
        List<Map<String,Object>> datalist=produceMapper.getProduceList(params);
        return new PageInfo<Map<String,Object>>(datalist);
    }

    @Override
    public List<Map<String, Object>> getProduceDetailImg(String produceId) {

        List<Map<String,Object>> datalist=produceMapper.getProduceDetailImg(produceId);
        return datalist;
    }

    @Override
    public List<Map<String, Object>> getProduceimg(String produceId) {
        List<Map<String,Object>> dataList=produceMapper.getProduceImg(produceId);
        return dataList;
    }

    @Override
    public List<Map<String, Object>> getProduceModel(String produceId) {
        List<Map<String,Object>> dataList=produceMapper.getProduceModel(produceId);
        return dataList;
    }

    @Override
    public Map<String, Object> getProduceDetail(String produceId) {
        Map<String,Object> dataMap=produceMapper.getProduceDetail(produceId);
        return dataMap;
    }

    @Override
    public Map<String, Object> produceOrder(Map params) {
        Map<String,Object> dataMap=produceMapper.getProduceOrder(params);
        return dataMap;
    }

    @Override
    public Map<String, Object> getDefaultAddress() {
        String phone="18787133663";
        Map<String,Object> dataMap=produceMapper.getDefaultAddress(phone);
        return dataMap;
    }

    @Override
    public List<Map<String, Object>> getUserAddress(String phone) {
        List<Map<String,Object>> dataList=produceMapper.getUserAddress(phone);
        return dataList;
    }

    @Override
    public Message addAddress(UserAddress userAddress) {
        Message message=new Message();
        try{
            if(produceMapper.addAddress(userAddress)==0){
                message.setMessage("新增失败");
                message.setSuccess("0");
            }else{
                message.setMessage("新增成功");
                message.setSuccess("1");
            }
        }catch (Exception e){
            log.error(e);
            message.setMessage("系统异常，新增失败");
            message.setSuccess("0");
        }
        return message;
    }
}
