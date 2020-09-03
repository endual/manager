package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.dao.dic.TransStatusMapper;
import com.haiyu.manager.pojo.dic.TransStatusDO;
import com.haiyu.manager.pojo.dic.TransStatusDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.TransStatusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class TransStatusServiceImpl   implements TransStatusService {

    @Autowired
    private TransStatusMapper blockReasonMapper;

    @Override
    public PageDataResult getTransStatusList() {
        PageDataResult pageDataResult = new PageDataResult();
        int pageNum = 0;
        int pageSize = 10;
        List<TransStatusDO> list = blockReasonMapper.selectAll();
        PageHelper.startPage(pageNum, pageSize);
        PageInfo<TransStatusDO> pageInfo = new PageInfo<>(list);
        pageDataResult.setTotals((int) pageInfo.getTotal());
        pageDataResult.setList(list);
        pageDataResult.setTotals(list.size());
        return pageDataResult;
    }

}