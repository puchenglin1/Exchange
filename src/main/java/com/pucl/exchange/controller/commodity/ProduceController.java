package com.pucl.exchange.controller.commodity;

import com.pucl.exchange.service.ProduecService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/produce")
public class ProduceController {

    @Resource
    private ProduecService produecService;

    @RequestMapping("getProduceList/{type}/{sort}")
    public String getProduceList(@PathVariable("type") int type,@PathVariable("sort") String sort){

        return "commodity/produelist";
    }
}
