package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.common.utils.DateUtils;
import com.haiyu.manager.dao.dic.TicketBaseTypeMapper;
import com.haiyu.manager.pojo.dic.TicketBaseTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.TicketBaseTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class TicketBaseTypeServiceImpl  implements TicketBaseTypeService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private TicketBaseTypeMapper ticketBaseTypeMapper;

    @Override
    public PageDataResult getTicketBaseTypeList(Integer pageNum, Integer pageSize) {
        PageDataResult pageDataResult = new PageDataResult();
        PageHelper.startPage(pageNum, pageSize);
        Example example = new Example(TicketBaseTypeDO.class);
        example.createCriteria().andEqualTo("logicDelete", 1);
        List<TicketBaseTypeDO> list = ticketBaseTypeMapper.selectByExample(example);;
        if(list.size() != 0){
            PageInfo<TicketBaseTypeDO> pageInfo = new PageInfo<>(list);
            pageDataResult.setList(list);
            pageDataResult.setTotals((int) pageInfo.getTotal());
        }
        return pageDataResult;
    }

    @Override
    public Map<String, Object> addTicketBaseType(TicketBaseTypeDO ticketBaseTypeDO) {
        Map<String,Object> data = new HashMap();
        try {
            ticketBaseTypeDO.setCreateTime(DateUtils.getCurrentDate());
            ticketBaseTypeDO.setLogicDelete(1);
            int result = ticketBaseTypeMapper.insert(ticketBaseTypeDO);
            if(result == 0){
                data.put("code",0);
                data.put("msg","新增票种基本类型失败");
                logger.error("新增票种基本类型失败");
                return data;
            }
            data.put("code",1);
            data.put("msg","新增票种基本类型成功");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("添加票种基本类型并授权！异常！", e);
        }
        return data;
    }

    @Override
    public Map<String, Object> updateTicketBaseType(TicketBaseTypeDO ticketBaseTypeDO) {
        Map<String, Object> data = new HashMap<>();
        try {
            ticketBaseTypeDO.setCreateTime(DateUtils.getCurrentDate());
            ticketBaseTypeDO.setLogicDelete(1);
            int result = ticketBaseTypeMapper.updateByPrimaryKey(ticketBaseTypeDO);
            if (result ==0) {
                data.put("code",0);
                data.put("msg", "更新失败!");
                logger.error("票种基本类型[更新]，结果=更新失败！");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "更新成功！");
            logger.info("票种基本类型[更新]，结果=成功！");
        } catch (Exception e){
            e.printStackTrace();
            logger.error("票种基本类型[更新]异常！",e);
            return data;
        }
        return data;
    }
    @Override
    public List<TicketBaseTypeDO> ticketBaseTypeList() {
        return ticketBaseTypeMapper.selectAll();
    }

    @Override
    public Map<String, Object> del(Integer id) {
        Map<String, Object> data = new HashMap<>();
        TicketBaseTypeDO ticketBaseTypeDO = ticketBaseTypeMapper.selectByPrimaryKey(id);
        ticketBaseTypeDO.setLogicDelete(0);
        try {
            int result = ticketBaseTypeMapper.updateByPrimaryKey(ticketBaseTypeDO);
            if (result == 0) {
                data.put("code",0);
                data.put("msg", "逻辑删除失败!");
                logger.error("逻辑删除失败");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "删除成功！");
            logger.info("票种基本类型删除[更新]，结果=成功！");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("票种基本类型[更新]异常！",e);
            return data;
        }
        return data;
    }
}