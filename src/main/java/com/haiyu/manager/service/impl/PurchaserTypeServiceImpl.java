package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.dao.dic.PurchaserTypeMapper;
import com.haiyu.manager.pojo.dic.PurchaserTypeDO;
import com.haiyu.manager.pojo.dic.PurchaserTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.PurchaserTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class PurchaserTypeServiceImpl implements PurchaserTypeService {

    @Autowired
    private PurchaserTypeMapper blockReasonMapper;

    @Override
    public PageDataResult getPurchaserTypeList() {
        PageDataResult pageDataResult = new PageDataResult();
        int pageNum = 0;
        int pageSize = 10;
        List<PurchaserTypeDO> list = blockReasonMapper.selectAll();
        PageHelper.startPage(pageNum, pageSize);
        PageInfo<PurchaserTypeDO> pageInfo = new PageInfo<>(list);
        pageDataResult.setTotals((int) pageInfo.getTotal());
        pageDataResult.setList(list);
        pageDataResult.setTotals(list.size());
        return pageDataResult;
    }

}