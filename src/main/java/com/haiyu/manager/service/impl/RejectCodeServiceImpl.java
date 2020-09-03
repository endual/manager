package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.dao.dic.RejectCodeMapper;
import com.haiyu.manager.pojo.dic.RejectCodeDO;
import com.haiyu.manager.pojo.dic.RejectCodeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.RejectCodeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class RejectCodeServiceImpl implements RejectCodeService {
    @Autowired
    private RejectCodeMapper blockReasonMapper;

    @Override
    public PageDataResult getRejectCodeList() {
        PageDataResult pageDataResult = new PageDataResult();
        int pageNum = 0;
        int pageSize = 10;
        List<RejectCodeDO> list = blockReasonMapper.selectAll();
        PageHelper.startPage(pageNum, pageSize);
        PageInfo<RejectCodeDO> pageInfo = new PageInfo<>(list);
        pageDataResult.setTotals((int) pageInfo.getTotal());
        pageDataResult.setList(list);
        pageDataResult.setTotals(list.size());
        return pageDataResult;
    }
}