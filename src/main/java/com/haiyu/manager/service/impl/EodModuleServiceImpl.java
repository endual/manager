package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.common.utils.DateUtils;
import com.haiyu.manager.dao.dic.EodModuleMapper;
import com.haiyu.manager.pojo.dic.EodModuleDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.EodModuleService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class EodModuleServiceImpl implements EodModuleService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private EodModuleMapper eodModuleMapper;

    @Override
    public PageDataResult getEodModuleList(Integer pageNum, Integer pageSize) {
        PageDataResult pageDataResult = new PageDataResult();
        PageHelper.startPage(pageNum, pageSize);
        Example example = new Example(EodModuleDO.class);
        example.createCriteria().andEqualTo("logicDelete", 1);
        List<EodModuleDO> list = eodModuleMapper.selectByExample(example);
        if(list.size() != 0){
            PageInfo<EodModuleDO> pageInfo = new PageInfo<>(list);
            pageDataResult.setList(list);
            pageDataResult.setTotals((int) pageInfo.getTotal());
        }
        return pageDataResult;
    }

    @Override
    public Map<String, Object> addEodModule(EodModuleDO eodModuleDO) {
        Map<String,Object> data = new HashMap();
        try {
            eodModuleDO.setCreateTime(DateUtils.getCurrentDate());
            eodModuleDO.setLogicDelete(1);
            int result = eodModuleMapper.insert(eodModuleDO);
            if(result == 0){
                data.put("code",0);
                data.put("msg","新增参数模式失败");
                logger.error("新增参数模式失败");
                return data;
            }
            data.put("code",1);
            data.put("msg","新增参数模式成功");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("添加参数模式并授权！异常！", e);
        }
        return data;
    }

    @Override
    public Map<String, Object> updateEodModule(EodModuleDO eodModuleDO) {
        Map<String, Object> data = new HashMap<>();
        try {
            eodModuleDO.setCreateTime(DateUtils.getCurrentDate());
            int result = eodModuleMapper.updateByPrimaryKey(eodModuleDO);
            if (result ==0) {
                data.put("code",0);
                data.put("msg", "更新失败!");
                logger.error("参数模式[更新]，结果=更新失败！");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "更新成功！");
            logger.info("参数模式[更新]，结果=成功！");
        } catch (Exception e){
            e.printStackTrace();
            logger.error("参数模式[更新]异常！",e);
            return data;
        }
        return data;
    }
    @Override
    public List<EodModuleDO> eodModuleList() {
        return eodModuleMapper.selectAll();
    }

    @Override
    public Map<String, Object> del(Integer id) {
        Map<String, Object> data = new HashMap<>();
        EodModuleDO eodModuleDO = eodModuleMapper.selectByPrimaryKey(id);
        eodModuleDO.setLogicDelete(0);
        try {
            int result = eodModuleMapper.updateByPrimaryKey(eodModuleDO);
            if (result == 0) {
                data.put("code",0);
                data.put("msg", "逻辑删除失败!");
                logger.error("逻辑删除失败");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "删除成功！");
            logger.info("参数模式删除[更新]，结果=成功！");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("参数模式[更新]异常！",e);
            return data;
        }
        return data;
    }

}