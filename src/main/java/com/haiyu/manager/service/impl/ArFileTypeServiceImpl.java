package com.haiyu.manager.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.common.utils.DateUtils;
import com.haiyu.manager.dao.dic.ArFileTypeMapper;
import com.haiyu.manager.pojo.dic.ArFileTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.ArFileTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ArFileTypeServiceImpl implements ArFileTypeService {

    private static final Logger logger = LoggerFactory.getLogger(ArFileTypeServiceImpl.class);

    @Autowired
    private ArFileTypeMapper arFileTypeMapper;

    @Override
    public PageDataResult getArFileTypeList(Integer pageNum, Integer pageSize) {
        PageDataResult pageDataResult = new PageDataResult();
        Example example = new Example(ArFileTypeDO.class);
        example.createCriteria().andEqualTo("logicDelete", 1);
        PageHelper.startPage(pageNum, pageSize);
        List<ArFileTypeDO> arFileTypeList = arFileTypeMapper.selectByExample(example);
        if(arFileTypeList.size() != 0){
            PageInfo<ArFileTypeDO> pageInfo = new PageInfo<>(arFileTypeList);
            pageDataResult.setList(arFileTypeList);
            pageDataResult.setTotals((int) pageInfo.getTotal());
        }

        return pageDataResult;
    }

    @Override
    public Map<String, Object> addArFileType(ArFileTypeDO arFileTypeDO) {
        Map<String,Object> data = new HashMap();
        try {
            arFileTypeDO.setCreateTime(DateUtils.getCurrentDate());
            int result = arFileTypeMapper.insert(arFileTypeDO);
            if(result == 0){
                data.put("code",0);
                data.put("msg","新增ar文件类型失败");
                logger.error("新增ar文件类型失败");
                return data;
            }
            data.put("code",1);
            data.put("msg","新增ar文件类型成功");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("添加ar文件类型！异常！", e);
        }
        return data;
    }

    @Override
    public Map<String, Object> updateArFileType(ArFileTypeDO arFileTypeDO) {
        Map<String, Object> data = new HashMap<>();
        try {
            arFileTypeDO.setCreateTime(DateUtils.getCurrentDate());
            arFileTypeDO.setLogicDelete(1);
            int result = arFileTypeMapper.updateByPrimaryKey(arFileTypeDO);
            if (result ==0) {
                data.put("code",0);
                data.put("msg", "更新失败!");
                logger.error("ar文件类型[更新]，结果=更新失败！");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "更新成功！");
            logger.info("ar文件类型[更新]，结果=成功！");
        } catch (Exception e){
            e.printStackTrace();
            logger.error("ar文件类型[更新]异常！",e);
            return data;
        }
        return data;
    }

    @Override
    public List<ArFileTypeDO> arFileTypeList() {
        return arFileTypeMapper.selectAll();
    }

    @Override
    public Map<String, Object> del(Integer id) {
        Map<String, Object> data = new HashMap<>();
        ArFileTypeDO arFileTypeDO = arFileTypeMapper.selectByPrimaryKey(id);
        arFileTypeDO.setLogicDelete(0);
        try {
            int result = arFileTypeMapper.updateByPrimaryKey(arFileTypeDO);
            if (result == 0) {
                data.put("code",0);
                data.put("msg", "逻辑删除失败!");
                logger.error("逻辑删除失败");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "删除成功！");
            logger.info("Ar文件类型删除[更新]，结果=成功！");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("ar文件类型[更新]异常！",e);
            return data;
        }
        return data;
    }
}
