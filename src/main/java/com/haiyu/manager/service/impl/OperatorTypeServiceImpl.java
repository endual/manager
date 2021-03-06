package com.haiyu.manager.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.common.utils.DateUtils;
import com.haiyu.manager.dao.dic.OperatorTypeMapper;
import com.haiyu.manager.pojo.dic.OperatorTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.OperatorTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class OperatorTypeServiceImpl  implements OperatorTypeService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private OperatorTypeMapper operatorTypeMapper;

    @Override
    public PageDataResult getOperatorTypeList(Integer pageNum, Integer pageSize) {
        PageDataResult pageDataResult = new PageDataResult();
        PageHelper.startPage(pageNum, pageSize);
        Example example = new Example(OperatorTypeDO.class);
        example.createCriteria().andEqualTo("logicDelete", 1);
        List<OperatorTypeDO> list = operatorTypeMapper.selectByExample(example);
        if(list.size() != 0){
            PageInfo<OperatorTypeDO> pageInfo = new PageInfo<>(list);
            pageDataResult.setList(list);
            pageDataResult.setTotals((int) pageInfo.getTotal());
        }
        return pageDataResult;
    }

    @Override
    public Map<String, Object> addOperatorType(OperatorTypeDO operatorTypeDO) {
        Map<String,Object> data = new HashMap();
        try {
            operatorTypeDO.setCreateTime(DateUtils.getCurrentDate());
            operatorTypeDO.setLogicDelete(1);
            int result = operatorTypeMapper.insert(operatorTypeDO);
            if(result == 0){
                data.put("code",0);
                data.put("msg","新增操作员类型失败");
                logger.error("新增操作员类型失败");
                return data;
            }
            data.put("code",1);
            data.put("msg","新增操作员类型成功");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("添加操作员类型并授权！异常！", e);
        }
        return data;
    }

    @Override
    public Map<String, Object> updateOperatorType(OperatorTypeDO operatorTypeDO) {
        Map<String, Object> data = new HashMap<>();
        try {
            operatorTypeDO.setCreateTime(DateUtils.getCurrentDate());
            operatorTypeDO.setLogicDelete(1);
            int result = operatorTypeMapper.updateByPrimaryKey(operatorTypeDO);
            if (result ==0) {
                data.put("code",0);
                data.put("msg", "更新失败!");
                logger.error("操作员类型[更新]，结果=更新失败！");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "更新成功！");
            logger.info("操作员类型[更新]，结果=成功！");
        } catch (Exception e){
            e.printStackTrace();
            logger.error("操作员类型[更新]异常！",e);
            return data;
        }
        return data;
    }

    @Override
    public List<OperatorTypeDO> operatorTypeList() {
        return operatorTypeMapper.selectAll();
    }

    @Override
    public Map<String, Object> del(Integer id) {
        Map<String, Object> data = new HashMap<>();
        OperatorTypeDO operatorTypeDO = operatorTypeMapper.selectByPrimaryKey(id);
        operatorTypeDO.setLogicDelete(0);
        try {
            int result = operatorTypeMapper.updateByPrimaryKey(operatorTypeDO);
            if (result == 0) {
                data.put("code",0);
                data.put("msg", "逻辑删除失败!");
                logger.error("逻辑删除失败");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "删除成功！");
            logger.info("操作员类型删除[更新]，结果=成功！");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("操作员类型[更新]异常！",e);
            return data;
        }
        return data;
    }
}