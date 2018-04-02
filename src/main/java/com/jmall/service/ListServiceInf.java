package com.jmall.service;

import java.util.List;

import com.jmall.bean.OBJECT_T_MALL_SKU;
import com.jmall.bean.T_MALL_SKU_ATTR_VALUE;

public interface ListServiceInf {

	List<OBJECT_T_MALL_SKU> get_list_by_flbh2(int flbh2);

	List<OBJECT_T_MALL_SKU> get_list_by_attr(List<T_MALL_SKU_ATTR_VALUE> list_attr, int flbh2);

}
