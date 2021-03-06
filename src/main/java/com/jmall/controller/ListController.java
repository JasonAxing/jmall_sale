package com.jmall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jmall.bean.MODEL_T_MALL_SKU_ATTR_VALUE;
import com.jmall.bean.OBJECT_T_MALL_SKU;
import com.jmall.service.ListServiceInf;

@Controller
public class ListController {

	@Autowired
	ListServiceInf listServiceInf;

	@RequestMapping("get_list_by_attr")
	public String get_list_by_attr(MODEL_T_MALL_SKU_ATTR_VALUE list_attr, int flbh2, ModelMap map) {

		// 根据属性查询列表的业务
		List<OBJECT_T_MALL_SKU> list_sku = listServiceInf.get_list_by_attr(list_attr.getList_attr(), flbh2);

		map.put("list_sku", list_sku);
		return "skuList";
	}

}
