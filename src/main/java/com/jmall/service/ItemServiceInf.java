package com.jmall.service;

import java.util.List;

import com.jmall.bean.DETAIL_T_MALL_SKU;
import com.jmall.bean.T_MALL_SKU;

public interface ItemServiceInf {

	DETAIL_T_MALL_SKU get_sku_detail(int sku_id);

	List<T_MALL_SKU> get_sku_list_by_spu(int spu_id);

}
