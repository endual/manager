package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.common.utils.DateUtils;
import com.haiyu.manager.dao.dic.DailyKnotTypeMapper;
import com.haiyu.manager.pojo.dic.DailyKnotTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.DailyKnotTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class DailyKnotTypeServiceImpl implements DailyKnotTypeService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    
    @Autowired
    private DailyKnotTypeMapper dailyKnotTypeMapper;

    @Override
    public PageDataResult getDailyKnotTypeList(Integer pageNum,Integer pageSize) {
        PageDataResult pageDataResult = new PageDataResult();
        PageHelper.startPage(pageNum, pageSize);
        Example example = new Example(DailyKnotTypeDO.class);
        example.createCriteria().andEqualTo("logicDelete", 1);
        List<DailyKnotTypeDO> list = dailyKnotTypeMapper.selectByExample(example);
        if(list.size() != 0){
            PageInfo<DailyKnotTypeDO> pageInfo = new PageInfo<>(list);
            pageDataResult.setList(list);
            pageDataResult.setTotals((int) pageInfo.getTotal());
        }
        return pageDataResult;
    }

    @Override
    public Map<String, Object> addDailyKnotType(DailyKnotTypeDO dailyKnotTypeDO) {
        Map<String,Object> data = new HashMap();
        try {
            dailyKnotTypeDO.setCreateTime(DateUtils.getCurrentDate());
            dailyKnotTypeDO.setLogicDelete(1);
            int result = dailyKnotTypeMapper.insert(dailyKnotTypeDO);
            if(result == 0){
                data.put("code",0);
                data.put("msg","新增日结任务类型失败");
                logger.error("新增日结任务类型失败");
                return data;
            }
            data.put("code",1);
            data.put("msg","新增日结任务类型成功");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("添加日结任务类型并授权！异常！", e);
        }
        return data;
    }

    @Override
    public Map<String, Object> updateDailyKnotType(DailyKnotTypeDO arFileTypeDO) {
        Map<String, Object> data = new HashMap<>();
        try {
            arFileTypeDO.setCreateTime(DateUtils.getCurrentDate());
            arFileTypeDO.setLogicDelete(1);
            int result = dailyKnotTypeMapper.updateByPrimaryKey(arFileTypeDO);
            if (result ==0) {
                data.put("code",0);
                data.put("msg", "更新失败!");
                logger.error("日结任务类型[更新]，结果=更新失败！");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "更新成功！");
            logger.info("日结任务类型[更新]，结果=成功！");
        } catch (Exception e){
            e.printStackTrace();
            logger.error("日结任务类型[更新]异常！",e);
            return data;
        }
        return data;
    }

    @Override
    public List<DailyKnotTypeDO> dailyKnotTypeList() {
        return dailyKnotTypeMapper.selectAll();
    }

    @Override
    public Map<String, Object> del(Integer id) {
        Map<String, Object> data = new HashMap<>();
        DailyKnotTypeDO dailyKnotTypeDO = dailyKnotTypeMapper.selectByPrimaryKey(id);
        dailyKnotTypeDO.setLogicDelete(0);
        try {
            int result = dailyKnotTypeMapper.updateByPrimaryKey(dailyKnotTypeDO);
            if (result == 0) {
                data.put("code",0);
                data.put("msg", "逻辑删除失败!");
                logger.error("逻辑删除失败");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "删除成功！");
            logger.info("日结任务类型[删除]，结果=成功！");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("日结任务类型[更新]异常！",e);
            return data;
        }
        return data;
    }

}