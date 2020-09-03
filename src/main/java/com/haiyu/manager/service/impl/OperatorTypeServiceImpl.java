package com.haiyu.manager.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.dao.dic.OperatorTypeMapper;
import com.haiyu.manager.pojo.dic.OperatorTypeDO;
import com.haiyu.manager.pojo.dic.OperatorTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.OperatorTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class OperatorTypeServiceImpl  implements OperatorTypeService {

    @Autowired
    private OperatorTypeMapper blockReasonMapper;

    @Override
    public PageDataResult getOperatorTypeList() {
        PageDataResult pageDataResult = new PageDataResult();
        int pageNum = 0;
        int pageSize = 10;
        List<OperatorTypeDO> list = blockReasonMapper.selectAll();
        PageHelper.startPage(pageNum, pageSize);
        PageInfo<OperatorTypeDO> pageInfo = new PageInfo<>(list);
        pageDataResult.setTotals((int) pageInfo.getTotal());
        pageDataResult.setList(list);
        pageDataResult.setTotals(list.size());
        return pageDataResult;
    }

}