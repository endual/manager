package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.dao.dic.RejectTicketTypeMapper;
import com.haiyu.manager.pojo.dic.RejectTicketTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.RejectTicketTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class RejectTicketTypeServiceImpl  implements RejectTicketTypeService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private RejectTicketTypeMapper rejectTicketTypeMapper;

    @Override
    public PageDataResult getRejectTicketTypeList(Integer pageNum, Integer pageSize) {
        PageDataResult pageDataResult = new PageDataResult();
        PageHelper.startPage(pageNum, pageSize);
        Example example = new Example(RejectTicketTypeDO.class);
        example.createCriteria().andEqualTo("logicDelete", 1);
        List<RejectTicketTypeDO> list = rejectTicketTypeMapper.selectByExample(example);;
        if(list.size() != 0){
            PageInfo<RejectTicketTypeDO> pageInfo = new PageInfo<>(list);
            pageDataResult.setList(list);
            pageDataResult.setTotals((int) pageInfo.getTotal());
        }
        return pageDataResult;
    }

    @Override
    public Map<String, Object> addRejectTicketType(RejectTicketTypeDO rejectTicketTypeDO) {
        Map<String,Object> data = new HashMap();
        rejectTicketTypeDO.setLogicDelete(1);
        try {
            int result = rejectTicketTypeMapper.insert(rejectTicketTypeDO);
            if(result == 0){
                data.put("code",0);
                data.put("msg","新增拒绝历史对应失败");
                logger.error("新增拒绝历史对应失败");
                return data;
            }
            data.put("code",1);
            data.put("msg","新增拒绝历史对应成功");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("添加拒绝历史对应并授权！异常！", e);
        }
        return data;
    }

    @Override
    public Map<String, Object> updateRejectTicketType(RejectTicketTypeDO rejectTicketTypeDO) {
        Map<String, Object> data = new HashMap<>();
        try {
            int result = rejectTicketTypeMapper.updateByPrimaryKey(rejectTicketTypeDO);
            if (result ==0) {
                data.put("code",0);
                data.put("msg", "更新失败!");
                logger.error("拒绝历史对应[更新]，结果=更新失败！");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "更新成功！");
            logger.info("拒绝历史对应[更新]，结果=成功！");
        } catch (Exception e){
            e.printStackTrace();
            logger.error("拒绝历史对应[更新]异常！",e);
            return data;
        }
        return data;
    }
    @Override
    public List<RejectTicketTypeDO> rejectTicketTypeList() {
        return rejectTicketTypeMapper.selectAll();
    }

    @Override
    public Map<String, Object> del(Integer id) {
        Map<String, Object> data = new HashMap<>();
        RejectTicketTypeDO rejectTicketTypeDO = rejectTicketTypeMapper.selectByPrimaryKey(id);
        rejectTicketTypeDO.setLogicDelete(0);
        try {
            int result = rejectTicketTypeMapper.updateByPrimaryKey(rejectTicketTypeDO);
            if (result == 0) {
                data.put("code",0);
                data.put("msg", "逻辑删除失败!");
                logger.error("逻辑删除失败");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "删除成功！");
            logger.info("绝历史对应删除[更新]，结果=成功！");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("拒绝历史对应a[更新]异常！",e);
            return data;
        }
        return data;
    }


}