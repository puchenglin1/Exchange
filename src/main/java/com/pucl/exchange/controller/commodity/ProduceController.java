package com.pucl.exchange.controller.commodity;

import com.github.pagehelper.PageInfo;
import com.pucl.exchange.service.ProduecService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/produce")
public class ProduceController {

    @Resource
    private ProduecService produceService;

    /**
     * 商品列表
     * @param request
     * @param start 开始页数
     * @param length 每页条数
     * @param type 商品类型
     * @param sort 排序
     * @return
     */
    @RequestMapping("/getProduceList")
    public String getProduceList(HttpServletRequest request,
    @RequestParam(required = false, defaultValue = "1") int start,
    @RequestParam(required = false, defaultValue = "5") int length,
    @RequestParam(required = false, defaultValue = "1") int type,
    @RequestParam(required = false, defaultValue = "1") int sort){
        Map<String, Object> params=new HashMap<String,Object>();
        params.put("type",type);
        params.put("start",start);
        params.put("length",length);
        PageInfo<Map<String,Object>> pageInfo= produceService.getProduceList(params);
        request.setAttribute("dataList",pageInfo.getList());
        request.setAttribute("pageInfo",pageInfo);
        return "commodity/produelist";
    }

    /**
     *获取商品详情图片
     * @param request
     * @param produceId
     * @return
     */
    @RequestMapping("/getProduceDetail")
    public String getProduceDetail(HttpServletRequest request,
                                 @RequestParam(required = false) String produceId){
        //获取示例图片列表
        List<Map<String,Object>> produceImgList=produceService.getProduceimg(produceId);
        request.setAttribute("produceImgList",produceImgList);
        //获取商品详情图片
        List<Map<String,Object>>  produceDetailImgList=produceService.getProduceDetailImg(produceId);
        request.setAttribute("produceDetailImgList",produceDetailImgList);
        //获取产品尺寸
        List<Map<String,Object>> produceModelList=produceService.getProduceModel(produceId);
        request.setAttribute("produceModelList",produceModelList);
        //产品详情
        Map<String,Object> produceDetail = produceService.getProduceDetail(produceId);
        request.setAttribute("produceDetail",produceDetail);
        return "commodity/produedetail";
    }

    /**
     * 订单确认
     * @return
     */
    @RequestMapping("/produceOrder")
    public String produceOrder(HttpServletRequest request,
                               @RequestParam(required = false) String produceId,
                               @RequestParam(required = false) String modelId,
                               @RequestParam(required = false) int produceNum){
        Map<String,Object> params=new HashMap<String,Object>();
        params.put("produceId",produceId);
        params.put("modelId",modelId);
        Map<String,Object> datamMap=produceService.produceOrder(params);
        Map<String,Object> defaultAddressMap=produceService.getDefaultAddress();
        datamMap.put("produceNum",produceNum);
        request.setAttribute("dataMap",datamMap);
        request.setAttribute("defaultAddressMap",defaultAddressMap);
        return "commodity/produeorder";
    }

    /**
     *获取用户收货地址
     * @param request
     * @return
     */
    @RequestMapping("/userAddress")
    public String getUserAddress(HttpServletRequest request){
        String phone="18787133663";
        List<Map<String,Object>> dataList=produceService.getUserAddress(phone);
        request.setAttribute("dataList",dataList);
        return "commodity/userAddress";
    }

    /**
     * 新增收货地址页面
     * @return
     */
    @RequestMapping("/toAddAddress")
    public String toAddAddress(){

        return "commodity/addAddress";
    }


    @RequestMapping("/addAddress")
    public String addAddress(HttpServletRequest request,
                             @RequestParam(required = false) String produceId,
                             @RequestParam(required = false) String modelId,
                             @RequestParam(required = false) String produceNum){

        return "";
    }

}
