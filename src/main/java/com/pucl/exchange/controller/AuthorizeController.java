package com.pucl.exchange.controller;

import com.pucl.exchange.model.Message;
import com.pucl.exchange.service.AuthorizeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 网页授权
 */
@Controller
@RequestMapping("/authorize")
public class AuthorizeController {
    @Resource
    private AuthorizeService authorizeService;
    /**
     * 网页授权入口
     * @param response
     */
    @RequestMapping(value = "/wxLogin",method = RequestMethod.GET)
    public void wxLogin(HttpServletResponse response){
        authorizeService.wxLogin(response);
    }

    /**
     * 网页授权回调
     * @param request
     * @param response
     */
    @RequestMapping(value = "/callBack",method = RequestMethod.GET)
    public void callBack(HttpServletRequest request, HttpServletResponse response){
        authorizeService.callBack(request,response);
    }
}
