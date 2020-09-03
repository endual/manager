package com.haiyu.manager.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.common.utils.DateUtils;
import com.haiyu.manager.dao.dic.ArFileTypeMapper;
import com.haiyu.manager.dto.ArFileTypeDTO;
import com.haiyu.manager.filter.KickoutSessionFilter;
import com.haiyu.manager.pojo.dic.ArFileTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.ArFileTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ArFileTypeServiceImpl implements ArFileTypeService {

    private static final Logger logger = LoggerFactory.getLogger(KickoutSessionFilter.class);

    @Autowired
    private ArFileTypeMapper arFileTypeMapper;

    @Override
    public PageDataResult getArFileTypeList(Integer pageNum,Integer pageSize, ArFileTypeDTO arFileTypeDTO) {
        PageDataResult pageDataResult = new PageDataResult();
        List<ArFileTypeDO> arFileTypeList = arFileTypeMapper.selectAll();
        PageHelper.startPage(pageNum, pageSize);
        if(arFileTypeList.size() != 0){
            PageInfo<ArFileTypeDO> pageInfo = new PageInfo<>(arFileTypeList);
            pageDataResult.setList(arFileTypeList);
            pageDataResult.setTotals((int) pageInfo.getTotal());
        }

        return pageDataResult;
    }

    @Override
    public Map<String, Object> addArFileType(ArFileTypeDO fileType) {
        Map<String,Object> data = new HashMap();
        try {
            fileType.setCreateTime(DateUtils.getCurrentDate());
            fileType.setLogicDelete("1");
            int result = arFileTypeMapper.insert(fileType);
            if(result == 0){
                data.put("code",0);
                data.put("msg","新增角色失败");
                logger.error("新增角色失败");
                return data;
            }
            data.put("code",1);
            data.put("msg","新增角色成功");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("添加角色并授权！异常！", e);
        }
        return data;
    }

    @Override
    public Map<String, Object> updateArFileType(ArFileTypeDO arFileTypeDO) {
        Map<String, Object> data = new HashMap<>();
        try {
            arFileTypeDO.setCreateTime(DateUtils.getCurrentDate());
            arFileTypeDO.setLogicDelete("1");
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
}
