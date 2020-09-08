package com.haiyu.manager.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.common.utils.DateUtils;
import com.haiyu.manager.dao.dic.LanguageBitMapper;
import com.haiyu.manager.pojo.dic.LanguageBitDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.LanguageBitService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class LanguageBitServiceImpl implements LanguageBitService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private LanguageBitMapper languageBitMapper;

    @Override
    public PageDataResult getLanguageBitList(Integer pageNum, Integer pageSize) {
        PageDataResult pageDataResult = new PageDataResult();
        PageHelper.startPage(pageNum, pageSize);
        Example example = new Example(LanguageBitDO.class);
        example.createCriteria().andEqualTo("logicDelete", 1);
        List<LanguageBitDO> list = languageBitMapper.selectByExample(example);
        if(list.size() != 0){
            PageInfo<LanguageBitDO> pageInfo = new PageInfo<>(list);
            pageDataResult.setList(list);
            pageDataResult.setTotals((int) pageInfo.getTotal());
        }

        return pageDataResult;
    }

    @Override
    public List<LanguageBitDO> languageBitList() {
        logger.info("获取列表");
        return languageBitMapper.selectAll();
    }

    @Override
    public Map<String, Object> addLanguageBit(LanguageBitDO languageBitDO) {
        Map<String,Object> data = new HashMap();
        try {
            languageBitDO.setCreateTime(DateUtils.getCurrentDate());
            languageBitDO.setLogicDelete(1);
            int result = languageBitMapper.insert(languageBitDO);
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
    public Map<String, Object> updateLanguageBit(LanguageBitDO languageBitDO) {
        Map<String, Object> data = new HashMap<>();
        int result = languageBitMapper.updateByPrimaryKey(languageBitDO);
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
        LanguageBitDO languageBitDO = languageBitMapper.selectByPrimaryKey(id);
        languageBitDO.setLogicDelete(0);
        try {
            int result = languageBitMapper.updateByPrimaryKey(languageBitDO);
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