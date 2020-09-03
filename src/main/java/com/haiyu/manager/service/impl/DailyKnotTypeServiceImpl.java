package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.dao.dic.DailyKnotTypeMapper;
import com.haiyu.manager.pojo.dic.DailyKnotTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.DailyKnotTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DailyKnotTypeServiceImpl implements DailyKnotTypeService {
    @Autowired
    private DailyKnotTypeMapper blockReasonMapper;

    @Override
    public PageDataResult getDailyKnotTypeList() {
        PageDataResult pageDataResult = new PageDataResult();
        int pageNum = 0;
        int pageSize = 10;
        List<DailyKnotTypeDO> list = blockReasonMapper.selectAll();
        PageHelper.startPage(pageNum, pageSize);
        PageInfo<DailyKnotTypeDO> pageInfo = new PageInfo<>(list);
        pageDataResult.setTotals((int) pageInfo.getTotal());
        pageDataResult.setList(list);
        pageDataResult.setTotals(list.size());
        return pageDataResult;
    }

}