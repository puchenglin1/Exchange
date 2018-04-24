package com.pucl.exchange.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/anon")
public class AnonController {
    /**
     * 跳转到注册页面
     * @return
     */
    @RequestMapping(value={"/toRegist",""})
    public String toRegist(){
        return "anon/regist";
    }

    /**
     * 注册
     * @return
     */
    @RequestMapping(value={"/regist",""})
    public String regist(){

        return "anon/regist";
    }
}
