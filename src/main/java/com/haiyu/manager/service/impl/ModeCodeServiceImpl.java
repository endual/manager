package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.dao.dic.ModeCodeMapper;
import com.haiyu.manager.pojo.dic.ModeCodeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.ModeCodeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ModeCodeServiceImpl implements ModeCodeService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private ModeCodeMapper modeCodeMapper;

    @Override
    public PageDataResult getModeCodeList(Integer pageNum, Integer pageSize) {
        PageDataResult pageDataResult = new PageDataResult();
        PageHelper.startPage(pageNum, pageSize);
        Example example = new Example(ModeCodeDO.class);
        example.createCriteria().andEqualTo("isUse", 1);
        List<ModeCodeDO> list = modeCodeMapper.selectByExample(example);
        if(list.size() != 0){
            PageInfo<ModeCodeDO> pageInfo = new PageInfo<>(list);
            pageDataResult.setList(list);
            pageDataResult.setTotals((int) pageInfo.getTotal());
        }
        return pageDataResult;
    }

    @Override
    public Map<String, Object> addModeCode(ModeCodeDO modeCodeDO) {
        Map<String, Object> data = new HashMap();
        modeCodeDO.setIsUse(1);
        try {
            int result = modeCodeMapper.insert(modeCodeDO);
            if (result == 0) {
                data.put("code", 0);
                data.put("msg", "新增车站模式失败");
                logger.error("新增车站模式失败");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "新增车站模式成功");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("添加车站模式并授权！异常！", e);
        }
        return data;
    }

    @Override
    public Map<String, Object> updateModeCode(ModeCodeDO modeCodeDO) {
        Map<String, Object> data = new HashMap<>();
        try {
            int result = modeCodeMapper.updateByPrimaryKey(modeCodeDO);
            if (result == 0) {
                data.put("code", 0);
                data.put("msg", "更新失败!");
                logger.error("车站模式[更新]，结果=更新失败！");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "更新成功！");
            logger.info("车站模式[更新]，结果=成功！");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("车站模式[更新]异常！", e);
            return data;
        }
        return data;
    }

    @Override
    public List<ModeCodeDO> modeCodeList() {
        return modeCodeMapper.selectAll();
    }

    @Override
    public Map<String, Object> del(Integer id) {
        Map<String, Object> data = new HashMap<>();
        ModeCodeDO modeCodeDO = modeCodeMapper.selectByPrimaryKey(id);
        modeCodeDO.setIsUse(0);
        try {
            int result = modeCodeMapper.updateByPrimaryKey(modeCodeDO);
            if (result == 0) {
                data.put("code",0);
                data.put("msg", "逻辑删除失败!");
                logger.error("逻辑删除失败");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "删除成功！");
            logger.info("a删除[更新]，结果=成功！");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("车站模式[更新]异常！",e);
            return data;
        }
        return data;
    }
}