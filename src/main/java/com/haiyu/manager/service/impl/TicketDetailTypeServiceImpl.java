package com.haiyu.manager.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.dao.dic.TicketDetailTypeMapper;
import com.haiyu.manager.pojo.dic.TicketDetailTypeDO;
import com.haiyu.manager.pojo.dic.TicketDetailTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.TicketDetailTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class TicketDetailTypeServiceImpl   implements TicketDetailTypeService {

    @Autowired
    private TicketDetailTypeMapper blockReasonMapper;

    @Override
    public PageDataResult getTicketDetailTypeList() {
        PageDataResult pageDataResult = new PageDataResult();
        int pageNum = 0;
        int pageSize = 10;
        List<TicketDetailTypeDO> list = blockReasonMapper.selectAll();
        PageHelper.startPage(pageNum, pageSize);
        PageInfo<TicketDetailTypeDO> pageInfo = new PageInfo<>(list);
        pageDataResult.setTotals((int) pageInfo.getTotal());
        pageDataResult.setList(list);
        pageDataResult.setTotals(list.size());
        return pageDataResult;
    }
}