package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.dao.dic.BlockReasonMapper;
import com.haiyu.manager.pojo.dic.BlockReasonDO;
import com.haiyu.manager.pojo.dic.TicketBaseTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.TicketBaseTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class TicketBaseTypeServiceImpl  implements TicketBaseTypeService {

    @Autowired
    private BlockReasonMapper blockReasonMapper;

    @Override
    public PageDataResult getTicketBaseTypeList() {
        PageDataResult pageDataResult = new PageDataResult();
        int pageNum = 0;
        int pageSize = 10;
        List<BlockReasonDO> list = blockReasonMapper.selectAll();
        PageHelper.startPage(pageNum, pageSize);
        PageInfo<BlockReasonDO> pageInfo = new PageInfo<>(list);
        pageDataResult.setTotals((int) pageInfo.getTotal());
        pageDataResult.setList(list);
        pageDataResult.setTotals(list.size());
        return pageDataResult;
    }
}