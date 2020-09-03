package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.dao.dic.PartTypeMapper;
import com.haiyu.manager.pojo.dic.PartTypeDO;
import com.haiyu.manager.pojo.dic.PartTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.PartTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class PartTypeServiceImpl implements PartTypeService {

    @Autowired
    private PartTypeMapper blockReasonMapper;

    @Override
    public PageDataResult getPartTypeList() {
        PageDataResult pageDataResult = new PageDataResult();
        int pageNum = 0;
        int pageSize = 10;
        List<PartTypeDO> list = blockReasonMapper.selectAll();
        PageHelper.startPage(pageNum, pageSize);
        PageInfo<PartTypeDO> pageInfo = new PageInfo<>(list);
        pageDataResult.setTotals((int) pageInfo.getTotal());
        pageDataResult.setList(list);
        pageDataResult.setTotals(list.size());
        return pageDataResult;
    }
}