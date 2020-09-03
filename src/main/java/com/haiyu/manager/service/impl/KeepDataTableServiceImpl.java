package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.dao.dic.KeepdataTableMapper;
import com.haiyu.manager.pojo.dic.KeepdataTableDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.KeepDataTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class KeepDataTableServiceImpl implements KeepDataTableService {

    @Autowired
    private KeepdataTableMapper blockReasonMapper;

    @Override
    public PageDataResult getKeepdataTableList() {
        PageDataResult pageDataResult = new PageDataResult();
        int pageNum = 0;
        int pageSize = 10;
        List<KeepdataTableDO> list = blockReasonMapper.selectAll();
        PageHelper.startPage(pageNum, pageSize);
        PageInfo<KeepdataTableDO> pageInfo = new PageInfo<>(list);
        pageDataResult.setTotals((int) pageInfo.getTotal());
        pageDataResult.setList(list);
        pageDataResult.setTotals(list.size());
        return pageDataResult;
    }
}