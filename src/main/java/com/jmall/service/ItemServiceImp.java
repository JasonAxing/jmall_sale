package com.jmall.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jmall.bean.DETAIL_T_MALL_SKU;
import com.jmall.bean.T_MALL_SKU;
import com.jmall.mapper.ItemMapper;

@Service
public class ItemServiceImp implements ItemServiceInf {

	@Autowired
	ItemMapper itemMapper;

	@Override
	public DETAIL_T_MALL_SKU get_sku_detail(int sku_id) {
		HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
		hashMap.put("sku_id", sku_id);
		DETAIL_T_MALL_SKU obj_sku = itemMapper.select_detail_sku(hashMap);
		return obj_sku;
	}

	@Override
	public List<T_MALL_SKU> get_sku_list_by_spu(int spu_id) {
		return itemMapper.select_skuList_by_spu(spu_id);

	}

}
