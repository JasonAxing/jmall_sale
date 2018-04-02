package com.jmall.mapper;

import java.util.List;
import java.util.Map;

import com.jmall.bean.DETAIL_T_MALL_SKU;
import com.jmall.bean.T_MALL_SKU;

public interface ItemMapper {

	DETAIL_T_MALL_SKU select_detail_sku(Map<Object, Object> map);

	List<T_MALL_SKU> select_skuList_by_spu(int spu_id);

}
