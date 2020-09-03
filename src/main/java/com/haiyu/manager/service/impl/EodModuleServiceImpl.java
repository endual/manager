package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.dao.dic.EodModuleMapper;
import com.haiyu.manager.pojo.dic.EodModuleDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.EodModuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class EodModuleServiceImpl implements EodModuleService {

    @Autowired
    private EodModuleMapper blockReasonMapper;

    @Override
    public PageDataResult getEodModuleList() {
        PageDataResult pageDataResult = new PageDataResult();
        int pageNum = 0;
        int pageSize = 10;
        List<EodModuleDO> list = blockReasonMapper.selectAll();
        PageHelper.startPage(pageNum, pageSize);
        PageInfo<EodModuleDO> pageInfo = new PageInfo<>(list);
        pageDataResult.setTotals((int) pageInfo.getTotal());
        pageDataResult.setList(list);
        pageDataResult.setTotals(list.size());
        return pageDataResult;
    }

}