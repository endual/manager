package com.haiyu.manager.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.common.utils.DateUtils;
import com.haiyu.manager.dao.dic.ConcessionalLampMapper;
import com.haiyu.manager.pojo.dic.ConcessionalLampDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.ConcessionalLampService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ConcessionalLampServiceImpl implements ConcessionalLampService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private ConcessionalLampMapper concessionalLampMapper;

    @Override
    public PageDataResult getConcessionalLampList(Integer pageNum, Integer pageSize) {
        PageDataResult pageDataResult = new PageDataResult();
        PageHelper.startPage(pageNum, pageSize);
        Example example = new Example(ConcessionalLampDO.class);
        example.createCriteria().andEqualTo("logicDelete", 1);
        List<ConcessionalLampDO> list = concessionalLampMapper.selectByExample(example);
        if(list.size() != 0){
            PageInfo<ConcessionalLampDO> pageInfo = new PageInfo<>(list);
            pageDataResult.setList(list);
            pageDataResult.setTotals((int) pageInfo.getTotal());
        }

        return pageDataResult;
    }

    @Override
    public List<ConcessionalLampDO> concessionalLampList() {
        logger.info("获取列表");
        return concessionalLampMapper.selectAll();
    }

    @Override
    public Map<String, Object> addConcessionalLamp(ConcessionalLampDO concessionalLampDO) {
        Map<String,Object> data = new HashMap();
        try {
            concessionalLampDO.setCreateTime(DateUtils.getCurrentDate());
            concessionalLampDO.setLogicDelete(1);
            int result = concessionalLampMapper.insert(concessionalLampDO);
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
    public Map<String, Object> updateConcessionalLamp(ConcessionalLampDO concessionalLampDO) {
        Map<String, Object> data = new HashMap<>();
        int result = concessionalLampMapper.updateByPrimaryKey(concessionalLampDO);
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
        ConcessionalLampDO concessionalLampDO = concessionalLampMapper.selectByPrimaryKey(id);
        concessionalLampDO.setLogicDelete(0);
        try {
            int result = concessionalLampMapper.updateByPrimaryKey(concessionalLampDO);
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