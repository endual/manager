package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.dao.dic.RejectTicketTypeMapper;
import com.haiyu.manager.pojo.dic.RejectTicketTypeDO;
import com.haiyu.manager.pojo.dic.RejectTicketTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.RejectTicketTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class RejectTicketTypeServiceImpl  implements RejectTicketTypeService {

    @Autowired
    private RejectTicketTypeMapper blockReasonMapper;

    @Override
    public PageDataResult getRejectTicketTypeList() {
        PageDataResult pageDataResult = new PageDataResult();
        int pageNum = 0;
        int pageSize = 10;
        List<RejectTicketTypeDO> list = blockReasonMapper.selectAll();
        PageHelper.startPage(pageNum, pageSize);
        PageInfo<RejectTicketTypeDO> pageInfo = new PageInfo<>(list);
        pageDataResult.setTotals((int) pageInfo.getTotal());
        pageDataResult.setList(list);
        pageDataResult.setTotals(list.size());
        return pageDataResult;
    }

}