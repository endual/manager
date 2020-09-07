package com.haiyu.manager.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.common.utils.DateUtils;
import com.haiyu.manager.dao.dic.BlockReasonMapper;
import com.haiyu.manager.pojo.dic.BlockReasonDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.BlockReasonService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author lzx
 */
@Service
public class BlockReasonServiceImpl implements BlockReasonService {

    private static final Logger logger = LoggerFactory.getLogger(BlockReasonServiceImpl.class);

    @Autowired
    private BlockReasonMapper blockReasonMapper;

    @Override
    public PageDataResult getBlockReasonList(Integer pageNum,Integer pageSize) {
        PageDataResult pageDataResult = new PageDataResult();
        Example example = new Example(BlockReasonDO.class);
        example.createCriteria().andEqualTo("logicDelete", 1);
        PageHelper.startPage(pageNum, pageSize);
        List<BlockReasonDO> list = blockReasonMapper.selectByExample(example);
        if(list.size() != 0){
            PageInfo<BlockReasonDO> pageInfo = new PageInfo<>(list);
            pageDataResult.setList(list);
            pageDataResult.setTotals((int) pageInfo.getTotal());
        }
        return pageDataResult;
    }

    @Override
    public List<BlockReasonDO> blockReasonList() {
        List<BlockReasonDO> list = blockReasonMapper.selectAll();
        return list;
    }

    @Override
    public Map<String, Object> addBlockReason(BlockReasonDO blockReasonDO) {
        Map<String, Object> data = new HashMap<>();
        blockReasonDO.setCreateTime(DateUtils.getCurrentDate());
        blockReasonDO.setLogicDelete(1);
        try {
            int insert = blockReasonMapper.insert(blockReasonDO);
            if (insert == 0) {
                logger.error("新增锁卡原因，结果=失败！");
                data.put("code", 0);
                data.put("msg", "新增锁卡原因，结果=失败！");
                return data;
            }
            logger.info("新增锁卡原因，结果=成功！");
            data.put("code", 1);
            data.put("msg", "新增锁卡原因成功！");

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("锁卡原因异常");
            return data;
        }
        return data;
    }

    @Override
    public Map<String, Object> updateBlockReason(BlockReasonDO blockReasonDO) {
        Map<String, Object> data = new HashMap<>();
        try {
            BlockReasonDO blockReason = blockReasonMapper.selectByPrimaryKey(blockReasonDO);
            blockReasonDO.setCreateTime(blockReason.getCreateTime());
            int insert = blockReasonMapper.updateByPrimaryKey(blockReasonDO);
            if (insert == 0) {
                logger.error("更新锁卡原因，结果=失败！");
                data.put("code", 0);
                data.put("msg", "更新锁卡原因，结果=失败！");
                return data;
            }
            logger.info("更新锁卡原因，结果=成功！");
            data.put("code", 1);
            data.put("msg", "更新锁卡原因成功！");

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("更新锁卡原因异常");
            return data;
        }
        return data;
    }

    @Override
    public Map<String, Object> del(Integer id) {
        Map<String, Object> data = new HashMap<>();
        BlockReasonDO blockReasonDO = blockReasonMapper.selectByPrimaryKey(id);
        blockReasonDO.setLogicDelete(0);
        try {
            int result = blockReasonMapper.updateByPrimaryKey(blockReasonDO);
            if (result == 0) {
                data.put("code",0);
                data.put("msg", "逻辑删除失败!");
                logger.error("逻辑删除失败");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "删除成功！");
            logger.info("锁卡原因删除[更新]，结果=成功！");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("锁卡原因[更新]异常！",e);
            return data;
        }
        return data;
    }
}
