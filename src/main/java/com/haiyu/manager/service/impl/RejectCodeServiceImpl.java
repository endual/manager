package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.common.utils.DateUtils;
import com.haiyu.manager.dao.dic.RejectCodeMapper;
import com.haiyu.manager.pojo.dic.RejectCodeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.RejectCodeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class RejectCodeServiceImpl implements RejectCodeService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private RejectCodeMapper rejectCodeMapper;

    @Override
    public PageDataResult getRejectCodeList(Integer pageNum, Integer pageSize) {
        PageDataResult pageDataResult = new PageDataResult();
        PageHelper.startPage(pageNum, pageSize);
        Example example = new Example(RejectCodeDO.class);
        example.createCriteria().andEqualTo("logicDelete", 1);
        List<RejectCodeDO> list = rejectCodeMapper.selectByExample(example);;
        if(list.size() != 0){
            PageInfo<RejectCodeDO> pageInfo = new PageInfo<>(list);
            pageDataResult.setList(list);
            pageDataResult.setTotals((int) pageInfo.getTotal());
        }
        return pageDataResult;
    }

    @Override
    public Map<String, Object> addRejectCode(RejectCodeDO rejectCodeDO) {
        Map<String,Object> data = new HashMap();
        rejectCodeDO.setLogicDelete(1);
        try {
            rejectCodeDO.setCreateTime(DateUtils.getCurrentDate());
            rejectCodeDO.setLogicDelete(1);
            int result = rejectCodeMapper.insert(rejectCodeDO);
            if(result == 0){
                data.put("code",0);
                data.put("msg","新增拒绝码失败");
                logger.error("新增拒绝码失败");
                return data;
            }
            data.put("code",1);
            data.put("msg","新增拒绝码成功");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("添加拒绝码！异常！", e);
        }
        return data;
    }

    @Override
    public Map<String, Object> updateRejectCode(RejectCodeDO rejectCodeDO) {
        Map<String, Object> data = new HashMap<>();
        try {
            rejectCodeDO.setCreateTime(DateUtils.getCurrentDate());
            rejectCodeDO.setLogicDelete(1);
            int result = rejectCodeMapper.updateByPrimaryKey(rejectCodeDO);
            if (result ==0) {
                data.put("code",0);
                data.put("msg", "更新失败!");
                logger.error("拒绝码[更新]，结果=更新失败！");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "更新成功！");
            logger.info("拒绝码[更新]，结果=成功！");
        } catch (Exception e){
            e.printStackTrace();
            logger.error("拒绝码[更新]异常！",e);
            return data;
        }
        return data;
    }
    @Override
    public List<RejectCodeDO> rejectCodeList() {
        return rejectCodeMapper.selectAll();
    }

    @Override
    public Map<String, Object> del(Integer id) {
        Map<String, Object> data = new HashMap<>();
        RejectCodeDO arFileTypeDO = rejectCodeMapper.selectByPrimaryKey(id);
        arFileTypeDO.setLogicDelete(0);
        try {
            int result = rejectCodeMapper.updateByPrimaryKey(arFileTypeDO);
            if (result == 0) {
                data.put("code",0);
                data.put("msg", "逻辑删除失败!a");
                logger.error("逻辑删除失败");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "删除成功！");
            logger.info("r文件类型删除[更新]，结果=成功！");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("拒绝码[更新]异常！",e);
            return data;
        }
        return data;
    }
}