package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.dao.dic.WarehouseTypeMapper;
import com.haiyu.manager.pojo.dic.WarehouseTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.WarehouseTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class WarehouseTypeServiceImpl implements WarehouseTypeService {

    @Autowired
    private WarehouseTypeMapper warehouseTypeMapper;

    @Override
    public PageDataResult getWarehouseTypeList() {
        PageDataResult pageDataResult = new PageDataResult();
        int pageNum = 0;
        int pageSize = 10;
        List<WarehouseTypeDO> list = warehouseTypeMapper.selectAll();
        PageHelper.startPage(pageNum, pageSize);
        PageInfo<WarehouseTypeDO> pageInfo = new PageInfo<>(list);
        pageDataResult.setTotals((int) pageInfo.getTotal());
        pageDataResult.setList(list);
        pageDataResult.setTotals(list.size());
        return pageDataResult;
    }

}