package com.pucl.exchange.mapper;

import com.pucl.exchange.model.Produce;
import com.pucl.exchange.model.UserAddress;
import com.pucl.exchange.util.MyMapper;

import java.util.List;
import java.util.Map;

public interface ProduceMapper extends MyMapper<Produce> {
    /**
     * 获取商品列表
     * @return
     */
    public List<Map<String,Object>> getProduceList(Map<String, Object> params);

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
    public List<Map<String,Object>> getProduceImg(String produceId);

    /**
     * 获取产品尺寸
     * @param produceId
     * @return
     */
    public List<Map<String,Object>> getProduceModel(String produceId);

    /**
     * 获取产品详情信息
     * @param produceId
     * @return
     */
    public Map<String,Object> getProduceDetail(String produceId);

    /**
     * 生成订单确认信息
     * @param params
     * @return
     */
    public Map<String,Object> getProduceOrder(Map params);

    /**
     * 获取默认收货地址
     * @param phone
     * @return
     */
    public Map<String,Object> getDefaultAddress(String phone);

    /**
     * 获取用户收货地址
     * @param phone
     * @return
     */
    public List<Map<String,Object>> getUserAddress(String phone);

    /**
     *新增收获地址
     * @return
     */
    public int addAddress(UserAddress userAddress);
}
