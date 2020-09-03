package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.dao.dic.PaymentTypeMapper;
import com.haiyu.manager.pojo.dic.PaymentTypeDO;
import com.haiyu.manager.pojo.dic.PaymentTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.PaymentTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class PaymentTypeServiceImpl  implements PaymentTypeService {
    @Autowired
    private PaymentTypeMapper blockReasonMapper;

    @Override
    public PageDataResult getPaymentTypeList() {
        PageDataResult pageDataResult = new PageDataResult();
        int pageNum = 0;
        int pageSize = 10;
        List<PaymentTypeDO> list = blockReasonMapper.selectAll();
        PageHelper.startPage(pageNum, pageSize);
        PageInfo<PaymentTypeDO> pageInfo = new PageInfo<>(list);
        pageDataResult.setTotals((int) pageInfo.getTotal());
        pageDataResult.setList(list);
        pageDataResult.setTotals(list.size());
        return pageDataResult;
    }

}