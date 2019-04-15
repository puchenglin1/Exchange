package com.pucl.exchange.service.impl;


import com.pucl.exchange.model.Message;
import com.pucl.exchange.service.AuthorizeService;
import com.pucl.exchange.util.HttpUtil;
import com.pucl.exchange.util.WeiXinParams;
import net.sf.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.URLEncoder;

@Service("coreService")
public class AuthorizeServiceImpl implements AuthorizeService {
    private final static Logger log= LoggerFactory.getLogger(AuthorizeServiceImpl.class);



    @Override
    public void wxLogin(HttpServletResponse response) {
        String url = WeiXinParams.authorize_url.replace("APPID",WeiXinParams.appid).replace("REDIRECT_URI", URLEncoder.encode(WeiXinParams.redirect_uri));
        try{
            response.sendRedirect(url);
        }catch (Exception e){
            log.error("网页授权异常：",e);
        }

    }

    @Override
    public void callBack(HttpServletRequest request, HttpServletResponse response) {
        try{
            //第二步：通过code换取网页授权access_token
            //从request里面获取code参数(当微信服务器访问回调地址的时候，会把code参数传递过来)
            String code = request.getParameter("code");
            log.info("网页授权code------"+code);
            //获取code后，请求以下链接获取access_token
            String url= WeiXinParams.authorize_access_token_url.replace("APPID",WeiXinParams.appid).replace("SECRET",WeiXinParams.appsecret).replace("CODE",code);
            JSONObject jsonObject= HttpUtil.httpRequest(url,"GET",null);
            log.info("网页授权==========================jsonObject"+jsonObject);
            //从返回的JSON数据中取出access_token和openid，拉取用户信息时用
            String openid = jsonObject.getString("openid");
            request.getSession().setAttribute("openid",openid);

        }catch(Exception e){
            log.error("网页授权异常",e);
        }
    }
}
