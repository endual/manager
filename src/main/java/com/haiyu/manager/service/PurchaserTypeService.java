package com.haiyu.manager.service;


import com.haiyu.manager.pojo.dic.PurchaserTypeDO;
import com.haiyu.manager.response.PageDataResult;

import java.util.List;
import java.util.Map;

/**
 * 采购商信息编码
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
public interface PurchaserTypeService  {
    PageDataResult getPurchaserTypeList(Integer pageNum, Integer pageSize);

    Map<String, Object> addPurchaserType(PurchaserTypeDO purchaserTypeDO);

    Map<String, Object> updatePurchaserType(PurchaserTypeDO purchaserTypeDO);

    List<PurchaserTypeDO> purchaserTypeList();

    Map<String, Object> del(Integer id);
}

