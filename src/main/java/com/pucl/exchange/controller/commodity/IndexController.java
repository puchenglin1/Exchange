package com.pucl.exchange.controller.commodity;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/commodity")
public class IndexController {
    /**
     * 跳转到注册页面
     * @return
     */
    @RequestMapping(value={"/toIndex",""})
    public String toRegist(){
        return "commodity/index";
    }

}
