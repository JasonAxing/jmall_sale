package com.jmall.server;

import java.util.List;

import javax.jws.WebService;

import com.jmall.bean.T_MALL_ADDRESS;
import com.jmall.bean.T_MALL_USER_ACCOUNT;

@WebService
public interface AddressServerInf {

	List<T_MALL_ADDRESS> get_addresses(T_MALL_USER_ACCOUNT user);

	T_MALL_ADDRESS get_address(int address_id);

}
