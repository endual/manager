package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.dao.dic.TransTypeMapper;
import com.haiyu.manager.dao.dic.TransTypeMapper;
import com.haiyu.manager.pojo.dic.TransTypeDO;
import com.haiyu.manager.pojo.dic.TransTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.TransTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class TransTypeServiceImpl implements TransTypeService {

    @Autowired
    private TransTypeMapper transTypeMapper;

    @Override
    public PageDataResult getTransTypeList() {
        PageDataResult pageDataResult = new PageDataResult();
        int pageNum = 0;
        int pageSize = 10;
        List<TransTypeDO> list = transTypeMapper.selectAll();
        PageHelper.startPage(pageNum, pageSize);
        PageInfo<TransTypeDO> pageInfo = new PageInfo<>(list);
        pageDataResult.setTotals((int) pageInfo.getTotal());
        pageDataResult.setList(list);
        pageDataResult.setTotals(list.size());
        return pageDataResult;
    }

}