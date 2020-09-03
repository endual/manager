package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.dao.dic.CommandEventMapper;
import com.haiyu.manager.pojo.dic.CommandEventDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.CommandEventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommandEventServiceImpl implements CommandEventService {

    @Autowired
    private CommandEventMapper arFileTypeMapper;

    @Override
    public PageDataResult getCommandEventList() {
        int pageNum = 0;
        int pageSize = 10;
        PageDataResult pageDataResult = new PageDataResult();
        List<CommandEventDO> arFileTypeList = arFileTypeMapper.selectAll();
        PageHelper.startPage(pageNum, pageSize);
        if(arFileTypeList.size() != 0){
            PageInfo<CommandEventDO> pageInfo = new PageInfo<>(arFileTypeList);
            pageDataResult.setList(arFileTypeList);
            pageDataResult.setTotals((int) pageInfo.getTotal());
        }

        return pageDataResult;
    }
}