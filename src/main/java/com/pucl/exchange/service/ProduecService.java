package com.pucl.exchange.service;

import com.github.pagehelper.PageInfo;
import com.pucl.exchange.model.Message;
import com.pucl.exchange.model.UserAddress;

import java.util.List;
import java.util.Map;

public interface ProduecService  {
    /**
     * 产品列表
     * @param params
     * @return
     */
    public PageInfo<Map<String,Object>> getProduceList(Map<String, Object> params);

    /**
     * 获取产品详情图片
     * @param produceId
     * @return
     */
    public List<Map<String,Object>> getProduceDetailImg(String produceId);

    /**
     * 获取产品示例图片列表
     * @param produceId
     * @return
     */
    public List<Map<String,Object>> getProduceimg(String produceId);

    /**
     * 获取产品尺寸
     * @param produceId
     * @return
     */
    public List<Map<String,Object>> getProduceModel(String produceId);

    /**
     * 获取产品详情
     * @param produceId
     * @return
     */
    public Map<String,Object> getProduceDetail(String produceId);

    /**
     * 订单确认
     * @param params
     * @return
     */
    public Map<String,Object> produceOrder(Map params);

    /**
     * 获取默认收货地址
     * @return
     */
    public Map<String,Object> getDefaultAddress();

    /**
     *获取用户地址
     * @return
     */
    public List<Map<String,Object>> getUserAddress(String phone);

    /**
     * 增加收获地址
     * @param userAddress
     * @return
     */
    public Message addAddress(UserAddress userAddress);
}
