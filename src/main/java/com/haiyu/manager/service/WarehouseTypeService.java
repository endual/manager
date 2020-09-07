package com.haiyu.manager.service;


import com.haiyu.manager.pojo.dic.WarehouseTypeDO;
import com.haiyu.manager.response.PageDataResult;

import java.util.List;
import java.util.Map;

/**
 * 仓库类型表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
public interface WarehouseTypeService  {
    PageDataResult getWarehouseTypeList(Integer pageNum, Integer pageSize);

    List<WarehouseTypeDO> warehouseTypeList();

    Map<String, Object> updateWarehouseType(WarehouseTypeDO warehouseTypeDO);

    Map<String, Object> addWarehouseType(WarehouseTypeDO warehouseTypeDO);

    Map<String, Object> del(Integer id);
}

