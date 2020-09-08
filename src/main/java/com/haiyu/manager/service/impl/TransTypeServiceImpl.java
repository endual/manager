package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.common.utils.DateUtils;
import com.haiyu.manager.dao.dic.TransTypeMapper;
import com.haiyu.manager.dto.TransTypeSearchDTO;
import com.haiyu.manager.pojo.dic.TransTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.TransTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class TransTypeServiceImpl implements TransTypeService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private TransTypeMapper transTypeMapper;

    @Override
    public PageDataResult getTransTypeList(Integer pageNum, Integer pageSize, TransTypeSearchDTO searchDto) {
        PageDataResult pageDataResult = new PageDataResult();
        PageHelper.startPage(pageNum, pageSize);
        Example example = new Example(TransTypeDO.class);
        example.createCriteria().andEqualTo("logicDelete", 1).andEqualTo("deviceType",searchDto.getDeviceType());
        List<TransTypeDO> list = transTypeMapper.selectByExample(example);;
        if(list.size() != 0){
            PageInfo<TransTypeDO> pageInfo = new PageInfo<>(list);
            pageDataResult.setList(list);
            pageDataResult.setTotals((int) pageInfo.getTotal());
        }
        return pageDataResult;
    }

    @Override
    public Map<String, Object> addTransType(TransTypeDO fileType) {
        Map<String,Object> data = new HashMap();
        try {
            fileType.setCreateTime(DateUtils.getCurrentDate());
            fileType.setLogicDelete(1);
            int result = transTypeMapper.insert(fileType);
            if(result == 0){
                data.put("code",0);
                data.put("msg","新增交易类型失败");
                logger.error("新增交易类型失败");
                return data;
            }
            data.put("code",1);
            data.put("msg","新增交易类型成功");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("添加交易类型并授权！异常！", e);
        }
        return data;
    }

    @Override
    public Map<String, Object> updateTransType(TransTypeDO transTypeDO) {
        Map<String, Object> data = new HashMap<>();
        try {
            transTypeDO.setCreateTime(DateUtils.getCurrentDate());
            transTypeDO.setLogicDelete(1);
            int result = transTypeMapper.updateByPrimaryKey(transTypeDO);
            if (result ==0) {
                data.put("code",0);
                data.put("msg", "更新失败!");
                logger.error("交易类型[更新]，结果=更新失败！");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "更新成功！");
            logger.info("交易类型[更新]，结果=成功！");
        } catch (Exception e){
            e.printStackTrace();
            logger.error("交易类型[更新]异常！",e);
            return data;
        }
        return data;
    }
    @Override
    public List<TransTypeDO> transTypeList() {
        return transTypeMapper.selectAll();
    }

    @Override
    public Map<String, Object> del(Integer id) {
        Map<String, Object> data = new HashMap<>();
        TransTypeDO transTypeDO = transTypeMapper.selectByPrimaryKey(id);
        transTypeDO.setLogicDelete(0);
        try {
            int result = transTypeMapper.updateByPrimaryKey(transTypeDO);
            if (result == 0) {
                data.put("code",0);
                data.put("msg", "逻辑删除失败!");
                logger.error("逻辑删除失败");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "删除成功！");
            logger.info("交易类型删除[更新]，结果=成功！");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("交易类型[更新]异常！",e);
            return data;
        }
        return data;
    }

}