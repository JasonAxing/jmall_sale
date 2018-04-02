package com.jmall.mapper;

import java.util.List;

import com.jmall.bean.T_MALL_SHOPPINGCAR;

public interface CartMapper {

	List<T_MALL_SHOPPINGCAR> select_list_cart_by_user(int user_id);

	void insert_cart(T_MALL_SHOPPINGCAR cart);

	void update_cart(T_MALL_SHOPPINGCAR cart);

	int select_cart_exists(T_MALL_SHOPPINGCAR cart);

}
