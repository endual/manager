package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.dao.dic.PsgrTypeMapper;
import com.haiyu.manager.pojo.dic.PsgrTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.PsgrTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class PsgrTypeServiceImpl  implements PsgrTypeService {

    @Autowired
    private PsgrTypeMapper blockReasonMapper;

    @Override
    public PageDataResult getPsgrTypeList() {
        PageDataResult pageDataResult = new PageDataResult();
        int pageNum = 0;
        int pageSize = 10;
        List<PsgrTypeDO> list = blockReasonMapper.selectAll();
        PageHelper.startPage(pageNum, pageSize);
        PageInfo<PsgrTypeDO> pageInfo = new PageInfo<>(list);
        pageDataResult.setTotals((int) pageInfo.getTotal());
        pageDataResult.setList(list);
        pageDataResult.setTotals(list.size());
        return pageDataResult;
    }
}