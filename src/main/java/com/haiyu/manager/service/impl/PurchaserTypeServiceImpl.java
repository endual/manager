package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.dao.dic.PurchaserTypeMapper;
import com.haiyu.manager.pojo.dic.PurchaserTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.PurchaserTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class PurchaserTypeServiceImpl implements PurchaserTypeService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private PurchaserTypeMapper purchaserTypeMapper;

    @Override
    public PageDataResult getPurchaserTypeList(Integer pageNum, Integer pageSize) {
        PageDataResult pageDataResult = new PageDataResult();
        PageHelper.startPage(pageNum, pageSize);
        Example example = new Example(PurchaserTypeDO.class);
        example.createCriteria().andEqualTo("status", 1);
        List<PurchaserTypeDO> list = purchaserTypeMapper.selectByExample(example);;
        if(list.size() != 0){
            PageInfo<PurchaserTypeDO> pageInfo = new PageInfo<>(list);
            pageDataResult.setList(list);
            pageDataResult.setTotals((int) pageInfo.getTotal());
        }
        return pageDataResult;
    }

    @Override
    public Map<String, Object> addPurchaserType(PurchaserTypeDO purchaserTypeDO) {
        Map<String,Object> data = new HashMap();
        purchaserTypeDO.setStatus(1);
        try {
            int result = purchaserTypeMapper.insert(purchaserTypeDO);
            if(result == 0){
                data.put("code",0);
                data.put("msg","新增采购商信息编码失败");
                logger.error("新增采购商信息编码失败");
                return data;
            }
            data.put("code",1);
            data.put("msg","新增采购商信息编码成功");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("添加采购商信息编码并授权！异常！", e);
        }
        return data;
    }

    @Override
    public Map<String, Object> updatePurchaserType(PurchaserTypeDO purchaserTypeDO) {
        Map<String, Object> data = new HashMap<>();
        try {
            int result = purchaserTypeMapper.updateByPrimaryKey(purchaserTypeDO);
            if (result ==0) {
                data.put("code",0);
                data.put("msg", "更新失败!");
                logger.error("采购商信息编码[更新]，结果=更新失败！");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "更新成功！");
            logger.info("采购商信息编码[更新]，结果=成功！");
        } catch (Exception e){
            e.printStackTrace();
            logger.error("采购商信息编码[更新]异常！",e);
            return data;
        }
        return data;
    }

    @Override
    public List<PurchaserTypeDO> purchaserTypeList() {
        return purchaserTypeMapper.selectAll();
    }

    @Override
    public Map<String, Object> del(Integer id) {
        Map<String, Object> data = new HashMap<>();
        PurchaserTypeDO purchaserTypeDO = purchaserTypeMapper.selectByPrimaryKey(id);
        purchaserTypeDO.setStatus(0);
        try {
            int result = purchaserTypeMapper.updateByPrimaryKey(purchaserTypeDO);
            if (result == 0) {
                data.put("code",0);
                data.put("msg", "逻辑删除失败!");
                logger.error("逻辑删除失败");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "删除成功！");
            logger.info("采购商信息编码删除[更新]，结果=成功！");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("采购商信息编码[更新]异常！",e);
            return data;
        }
        return data;
    }

}