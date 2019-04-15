package com.pucl.exchange.service;



import com.pucl.exchange.model.Message;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface AuthorizeService {


    /**
     * 引导用户进入授权页面同意授权，获取code
     * @param response
     */
    public void wxLogin(HttpServletResponse response);

    public void callBack(HttpServletRequest request, HttpServletResponse response);
}
