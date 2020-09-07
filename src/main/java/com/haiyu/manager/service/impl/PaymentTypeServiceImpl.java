package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.common.utils.DateUtils;
import com.haiyu.manager.dao.dic.PaymentTypeMapper;
import com.haiyu.manager.pojo.dic.PaymentTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.PaymentTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class PaymentTypeServiceImpl  implements PaymentTypeService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private PaymentTypeMapper paymentTypeMapper;

    @Override
    public PageDataResult getPaymentTypeList(Integer pageNum, Integer pageSize) {
        PageDataResult pageDataResult = new PageDataResult();
        PageHelper.startPage(pageNum, pageSize);
        Example example = new Example(PaymentTypeDO.class);
        example.createCriteria().andEqualTo("logicDelete", 1);
        List<PaymentTypeDO> list = paymentTypeMapper.selectByExample(example);
        if(list.size() != 0){
            PageInfo<PaymentTypeDO> pageInfo = new PageInfo<>(list);
            pageDataResult.setList(list);
            pageDataResult.setTotals((int) pageInfo.getTotal());
        }
        return pageDataResult;
    }

    @Override
    public Map<String, Object> addPaymentType(PaymentTypeDO fileType) {
        Map<String,Object> data = new HashMap();
        try {
            fileType.setCreateTime(DateUtils.getCurrentDate());
            fileType.setLogicDelete(1);
            int result = paymentTypeMapper.insert(fileType);
            if(result == 0){
                data.put("code",0);
                data.put("msg","新增支付类型失败");
                logger.error("新增支付类型失败");
                return data;
            }
            data.put("code",1);
            data.put("msg","新增支付类型成功");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("添加支付类型并授权！异常！", e);
        }
        return data;
    }

    @Override
    public Map<String, Object> updatePaymentType(PaymentTypeDO paymentTypeDO) {
        Map<String, Object> data = new HashMap<>();
        try {
            int result = paymentTypeMapper.updateByPrimaryKey(paymentTypeDO);
            if (result ==0) {
                data.put("code",0);
                data.put("msg", "更新失败!");
                logger.error("支付类型[更新]，结果=更新失败！");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "更新成功！");
            logger.info("支付类型[更新]，结果=成功！");
        } catch (Exception e){
            e.printStackTrace();
            logger.error("支付类型[更新]异常！",e);
            return data;
        }
        return data;
    }

    @Override
    public List<PaymentTypeDO> paymentTypeList() {
        return paymentTypeMapper.selectAll();
    }

    @Override
    public Map<String, Object> del(Integer id) {
        Map<String, Object> data = new HashMap<>();
        PaymentTypeDO paymentTypeDO = paymentTypeMapper.selectByPrimaryKey(id);
        paymentTypeDO.setLogicDelete(0);
        try {
            int result = paymentTypeMapper.updateByPrimaryKey(paymentTypeDO);
            if (result == 0) {
                data.put("code",0);
                data.put("msg", "逻辑删除失败!");
                logger.error("逻辑删除失败");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "删除成功！");
            logger.info("支付类型删除[更新]，结果=成功！");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("支付类型[更新]异常！",e);
            return data;
        }
        return data;
    }

}