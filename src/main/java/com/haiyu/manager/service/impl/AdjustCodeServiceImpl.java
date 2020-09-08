package com.haiyu.manager.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.common.utils.DateUtils;
import com.haiyu.manager.dao.dic.AdjustCodeMapper;
import com.haiyu.manager.pojo.dic.AdjustCodeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.AdjustCodeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class AdjustCodeServiceImpl implements AdjustCodeService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private AdjustCodeMapper adjustCodeMapper;

    @Override
    public PageDataResult getAdjustCodeList(Integer pageNum, Integer pageSize) {
        PageDataResult pageDataResult = new PageDataResult();
        PageHelper.startPage(pageNum, pageSize);
        Example example = new Example(AdjustCodeDO.class);
        example.createCriteria().andEqualTo("logicDelete", 1);
        List<AdjustCodeDO> list = adjustCodeMapper.selectByExample(example);
        if(list.size() != 0){
            PageInfo<AdjustCodeDO> pageInfo = new PageInfo<>(list);
            pageDataResult.setList(list);
            pageDataResult.setTotals((int) pageInfo.getTotal());
        }

        return pageDataResult;
    }

    @Override
    public List<AdjustCodeDO> adjustCodeList() {
        logger.info("获取列表");
        return adjustCodeMapper.selectAll();
    }

    @Override
    public Map<String, Object> addAdjustCode(AdjustCodeDO adjustCodeDO) {
        Map<String,Object> data = new HashMap();
        try {
            adjustCodeDO.setCreateTime(DateUtils.getCurrentDate());
            adjustCodeDO.setLogicDelete(1);
            int result = adjustCodeMapper.insert(adjustCodeDO);
            if(result == 0){
                data.put("code",0);
                data.put("msg","新增失败");
                logger.error("新增失败");
                return data;
            }
            data.put("code",1);
            data.put("msg","新增成功");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("添加！异常！", e);
        }
        return data;
    }

    @Override
    public Map<String, Object> updateAdjustCode(AdjustCodeDO adjustCodeDO) {
        Map<String, Object> data = new HashMap<>();
        int result = adjustCodeMapper.updateByPrimaryKey(adjustCodeDO);
        try {
            if (result ==0) {
                data.put("code",0);
                data.put("msg", "更新失败!");
                logger.error("[更新]，结果=更新失败！");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "更新成功！");
            logger.info("[更新]，结果=成功！");
        } catch (Exception e){
            e.printStackTrace();
            logger.error("[更新]异常！",e);
            return data;
        }
        return data;
    }
    @Override
    public Map<String, Object> del(Integer id) {
        Map<String, Object> data = new HashMap<>();
        AdjustCodeDO adjustCodeDO = adjustCodeMapper.selectByPrimaryKey(id);
        adjustCodeDO.setLogicDelete(0);
        try {
            int result = adjustCodeMapper.updateByPrimaryKey(adjustCodeDO);
            if (result == 0) {
                data.put("code",0);
                data.put("msg", "逻辑删除失败!");
                logger.error("逻辑删除失败");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "删除成功！");
            logger.info("删除[更新]，结果=成功！");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("[更新]异常！",e);
            return data;
        }
        return data;
    }
}