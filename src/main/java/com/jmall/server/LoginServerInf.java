package com.jmall.server;

import javax.jws.WebService;

import com.jmall.bean.T_MALL_USER_ACCOUNT;

@WebService
public interface LoginServerInf {
	public String login(T_MALL_USER_ACCOUNT user);

	public String loginRest(T_MALL_USER_ACCOUNT user);
	
	public String login2(T_MALL_USER_ACCOUNT user);
}
