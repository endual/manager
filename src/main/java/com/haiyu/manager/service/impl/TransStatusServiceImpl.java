package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.common.utils.DateUtils;
import com.haiyu.manager.dao.dic.TransStatusMapper;
import com.haiyu.manager.pojo.dic.TransStatusDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.TransStatusService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class TransStatusServiceImpl   implements TransStatusService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private TransStatusMapper transStatusMapper;

    @Override
    public PageDataResult getTransStatusList(Integer pageNum, Integer pageSize) {
        PageDataResult pageDataResult = new PageDataResult();
        PageHelper.startPage(pageNum, pageSize);
        Example example = new Example(TransStatusDO.class);
        example.createCriteria().andEqualTo("logicDelete", 1);
        List<TransStatusDO> list = transStatusMapper.selectByExample(example);;
        if(list.size() != 0){
            PageInfo<TransStatusDO> pageInfo = new PageInfo<>(list);
            pageDataResult.setList(list);
            pageDataResult.setTotals((int) pageInfo.getTotal());
        }
        return pageDataResult;
    }

    @Override
    public Map<String, Object> addTransStatus(TransStatusDO fileType) {
        Map<String,Object> data = new HashMap();
        try {
            fileType.setCreateTime(DateUtils.getCurrentDate());
            fileType.setLogicDelete(1);
            int result = transStatusMapper.insert(fileType);
            if(result == 0){
                data.put("code",0);
                data.put("msg","新增交易状态失败");
                logger.error("新增交易状态失败");
                return data;
            }
            data.put("code",1);
            data.put("msg","新增交易状态成功");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("添加交易状态并授权！异常！", e);
        }
        return data;
    }

    @Override
    public Map<String, Object> updateTransStatus(TransStatusDO transStatusDO) {
        Map<String, Object> data = new HashMap<>();
        try {
            transStatusDO.setCreateTime(DateUtils.getCurrentDate());
            transStatusDO.setLogicDelete(1);
            int result = transStatusMapper.updateByPrimaryKey(transStatusDO);
            if (result ==0) {
                data.put("code",0);
                data.put("msg", "更新失败!");
                logger.error("交易状态[更新]，结果=更新失败！");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "更新成功！");
            logger.info("交易状态[更新]，结果=成功！");
        } catch (Exception e){
            e.printStackTrace();
            logger.error("交易状态[更新]异常！",e);
            return data;
        }
        return data;
    }

    @Override
    public List<TransStatusDO> transStatusList() {
        return transStatusMapper.selectAll();
    }

    @Override
    public Map<String, Object> del(Integer id) {
        Map<String, Object> data = new HashMap<>();
        TransStatusDO transStatusDO = transStatusMapper.selectByPrimaryKey(id);
        transStatusDO.setLogicDelete(0);
        try {
            int result = transStatusMapper.updateByPrimaryKey(transStatusDO);
            if (result == 0) {
                data.put("code",0);
                data.put("msg", "逻辑删除失败!");
                logger.error("逻辑删除失败");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "删除成功！");
            logger.info("交易状态[更新]，结果=成功！");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("交易状态[更新]异常！",e);
            return data;
        }
        return data;
    }

}