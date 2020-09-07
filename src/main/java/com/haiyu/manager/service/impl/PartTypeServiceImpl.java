package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.dao.dic.PartTypeMapper;
import com.haiyu.manager.pojo.dic.PartTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.PartTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class PartTypeServiceImpl implements PartTypeService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private PartTypeMapper partTypeMapper;

    @Override
    public PageDataResult getPartTypeList(Integer pageNum, Integer pageSize) {
        PageDataResult pageDataResult = new PageDataResult();
        Example example = new Example(PartTypeDO.class);
        example.createCriteria().andEqualTo("status", 1);
        PageHelper.startPage(pageNum, pageSize);
        List<PartTypeDO> list = partTypeMapper.selectByExample(example);
        if(list.size() != 0){
            PageInfo<PartTypeDO> pageInfo = new PageInfo<>(list);
            pageDataResult.setList(list);
            pageDataResult.setTotals((int) pageInfo.getTotal());
        }
        return pageDataResult;
    }

    @Override
    public Map<String, Object> addPartType(PartTypeDO partTypeDO) {
        Map<String,Object> data = new HashMap();
        partTypeDO.setStatus(1);
        try {
            int result = partTypeMapper.insert(partTypeDO);
            if(result == 0){
                data.put("code",0);
                data.put("msg","新增部件信息编码失败");
                logger.error("新增部件信息编码失败");
                return data;
            }
            data.put("code",1);
            data.put("msg","新增部件信息编码成功");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("添加部件信息编码并授权！异常！", e);
        }
        return data;
    }

    @Override
    public Map<String, Object> updatePartType(PartTypeDO partTypeDO) {
        Map<String, Object> data = new HashMap<>();
        try {
            int result = partTypeMapper.updateByPrimaryKey(partTypeDO);
            if (result ==0) {
                data.put("code",0);
                data.put("msg", "更新失败!");
                logger.error("部件信息编码[更新]，结果=更新失败！");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "更新成功！");
            logger.info("部件信息编码[更新]，结果=成功！");
        } catch (Exception e){
            e.printStackTrace();
            logger.error("部件信息编码[更新]异常！",e);
            return data;
        }
        return data;
    }
    @Override
    public List<PartTypeDO> partTypeList() {
        return partTypeMapper.selectAll();
    }

    @Override
    public Map<String, Object> del(Integer id) {
        Map<String, Object> data = new HashMap<>();
        PartTypeDO partTypeDO = partTypeMapper.selectByPrimaryKey(id);
        partTypeDO.setStatus(0);
        try {
            int result = partTypeMapper.updateByPrimaryKey(partTypeDO);
            if (result == 0) {
                data.put("code",0);
                data.put("msg", "逻辑删除失败!");
                logger.error("逻辑删除失败");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "删除成功！");
            logger.info("部件信息编码删除[更新]，结果=成功！");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("部件信息编码[更新]异常！",e);
            return data;
        }
        return data;
    }
}