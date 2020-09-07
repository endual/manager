package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.dao.dic.PsgrTypeMapper;
import com.haiyu.manager.pojo.dic.PsgrTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.PsgrTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class PsgrTypeServiceImpl  implements PsgrTypeService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private PsgrTypeMapper psgrTypeMapper;

    @Override
    public PageDataResult getPsgrTypeList(Integer pageNum, Integer pageSize) {
        PageDataResult pageDataResult = new PageDataResult();
        PageHelper.startPage(pageNum, pageSize);
        Example example = new Example(PsgrTypeDO.class);
        example.createCriteria().andEqualTo("logicDelete", 1);
        List<PsgrTypeDO> list = psgrTypeMapper.selectByExample(example);
        if(list.size() != 0){
            PageInfo<PsgrTypeDO> pageInfo = new PageInfo<>(list);
            pageDataResult.setList(list);
            pageDataResult.setTotals((int) pageInfo.getTotal());
        }
        return pageDataResult;
    }

    @Override
    public Map<String, Object> addPsgrType(PsgrTypeDO psgrTypeDO) {
        Map<String,Object> data = new HashMap();
        psgrTypeDO.setLogicDelete(1);
        try {
            int result = psgrTypeMapper.insert(psgrTypeDO);
            if(result == 0){
                data.put("code",0);
                data.put("msg","新增客流类型失败");
                logger.error("新增客流类型失败");
                return data;
            }
            data.put("code",1);
            data.put("msg","新增客流类型成功");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("添加客流类型并授权！异常！", e);
        }
        return data;
    }

    @Override
    public Map<String, Object> updatePsgrType(PsgrTypeDO arFileTypeDO) {
        Map<String, Object> data = new HashMap<>();
        try {
            int result = psgrTypeMapper.updateByPrimaryKey(arFileTypeDO);
            if (result ==0) {
                data.put("code",0);
                data.put("msg", "更新失败!");
                logger.error("客流类型[更新]，结果=更新失败！");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "更新成功！");
            logger.info("客流类型[更新]，结果=成功！");
        } catch (Exception e){
            e.printStackTrace();
            logger.error("客流类型[更新]异常！",e);
            return data;
        }
        return data;
    }

    @Override
    public List<PsgrTypeDO> psgrTypeList() {
        return psgrTypeMapper.selectAll();
    }

    @Override
    public Map<String, Object> del(Integer id) {
        Map<String, Object> data = new HashMap<>();
        PsgrTypeDO psgrTypeDO = psgrTypeMapper.selectByPrimaryKey(id);
        psgrTypeDO.setLogicDelete(0);
        try {
            int result = psgrTypeMapper.updateByPrimaryKey(psgrTypeDO);
            if (result == 0) {
                data.put("code",0);
                data.put("msg", "逻辑删除失败!");
                logger.error("逻辑删除失败");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "删除成功！");
            logger.info("客流类型删除[更新]，结果=成功！");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("客流类型[更新]异常！",e);
            return data;
        }
        return data;
    }
}