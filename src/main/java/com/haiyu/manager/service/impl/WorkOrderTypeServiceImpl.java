package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.dao.dic.WorkOrderTypeMapper;
import com.haiyu.manager.pojo.dic.WorkOrderTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.WorkOrderTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class WorkOrderTypeServiceImpl implements WorkOrderTypeService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private WorkOrderTypeMapper workOrderTypeMapper;

    @Override
    public PageDataResult getWorkOrderTypeList(Integer pageNum, Integer pageSize) {
        PageDataResult pageDataResult = new PageDataResult();
        PageHelper.startPage(pageNum, pageSize);
        Example example = new Example(WorkOrderTypeDO.class);
        example.createCriteria().andEqualTo("status", 1);
        List<WorkOrderTypeDO> list = workOrderTypeMapper.selectByExample(example);;
        if(list.size() != 0){
            PageInfo<WorkOrderTypeDO> pageInfo = new PageInfo<>(list);
            pageDataResult.setList(list);
            pageDataResult.setTotals((int) pageInfo.getTotal());
        }
        return pageDataResult;
    }
    @Override
    public Map<String, Object> addWorkOrderType(WorkOrderTypeDO typeDO) {
        Map<String,Object> data = new HashMap();
        typeDO.setStatus(1);
        try {
            int result = workOrderTypeMapper.insert(typeDO);
            if(result == 0){
                data.put("code",0);
                data.put("msg","新增工单类型失败");
                logger.error("新增工单类型失败");
                return data;
            }
            data.put("code",1);
            data.put("msg","新增工单类型成功");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("添加工单类型并授权！异常！", e);
        }
        return data;
    }

    @Override
    public Map<String, Object> updateWorkOrderType(WorkOrderTypeDO workOrderTypeDO) {
        Map<String, Object> data = new HashMap<>();
        try {
            int result = workOrderTypeMapper.updateByPrimaryKey(workOrderTypeDO);
            if (result ==0) {
                data.put("code",0);
                data.put("msg", "更新失败!");
                logger.error("工单类型[更新]，结果=更新失败！");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "更新成功！");
            logger.info("工单类型[更新]，结果=成功！");
        } catch (Exception e){
            e.printStackTrace();
            logger.error("工单类型[更新]异常！",e);
            return data;
        }
        return data;
    }
    @Override
    public List<WorkOrderTypeDO> workOrderTypeList() {
        return workOrderTypeMapper.selectAll();
    }

    @Override
    public Map<String, Object> del(Integer id) {
        Map<String, Object> data = new HashMap<>();
        WorkOrderTypeDO workOrderTypeDO = workOrderTypeMapper.selectByPrimaryKey(id);
        workOrderTypeDO.setStatus(0);
        try {
            int result = workOrderTypeMapper.updateByPrimaryKey(workOrderTypeDO);
            if (result == 0) {
                data.put("code",0);
                data.put("msg", "逻辑删除失败!");
                logger.error("逻辑删除失败");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "删除成功！");
            logger.info("工单类型删除[更新]，结果=成功！");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("工单类型[更新]异常！",e);
            return data;
        }
        return data;
    }
}