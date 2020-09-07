package com.haiyu.manager.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haiyu.manager.dao.dic.CommandEventMapper;
import com.haiyu.manager.pojo.dic.CommandEventDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.CommandEventService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CommandEventServiceImpl implements CommandEventService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private CommandEventMapper commandEventMapper;

    @Override
    public PageDataResult getCommandEventList(Integer pageNum, Integer pageSize) {
        PageDataResult pageDataResult = new PageDataResult();
        PageHelper.startPage(pageNum, pageSize);
        Example example = new Example(CommandEventDO.class);
        example.createCriteria().andEqualTo("logicDelete", 1);
        List<CommandEventDO> arFileTypeList = commandEventMapper.selectByExample(example);
        if(arFileTypeList.size() != 0){
            PageInfo<CommandEventDO> pageInfo = new PageInfo<>(arFileTypeList);
            pageDataResult.setList(arFileTypeList);
            pageDataResult.setTotals((int) pageInfo.getTotal());
        }

        return pageDataResult;
    }

    @Override
    public List<CommandEventDO> commandEventList() {
        logger.info("获取事件命令列表");
        return commandEventMapper.selectAll();
    }

    @Override
    public Map<String, Object> addCommandEvent(CommandEventDO commandEventDO) {
        Map<String,Object> data = new HashMap();
        try {
            commandEventDO.setLogicDelete(1);
            int result = commandEventMapper.insert(commandEventDO);
            if(result == 0){
                data.put("code",0);
                data.put("msg","新增事件命令失败");
                logger.error("新增事件命令失败");
                return data;
            }
            data.put("code",1);
            data.put("msg","新增事件命令成功");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("添加事件命令！异常！", e);
        }
        return data;
    }

    @Override
    public Map<String, Object> updateCommandEvent(CommandEventDO commandEventDO) {
        Map<String, Object> data = new HashMap<>();
        int result = commandEventMapper.updateByPrimaryKey(commandEventDO);
        try {
            if (result ==0) {
                data.put("code",0);
                data.put("msg", "更新事件命令失败!");
                logger.error("事件命令[更新]，结果=更新失败！");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "更新成功！");
            logger.info("事件命令[更新]，结果=成功！");
        } catch (Exception e){
            e.printStackTrace();
            logger.error("事件命令[更新]异常！",e);
            return data;
        }
        return data;
    }
    @Override
    public Map<String, Object> del(Integer id) {
        Map<String, Object> data = new HashMap<>();
        CommandEventDO commandEventDO = commandEventMapper.selectByPrimaryKey(id);
        commandEventDO.setLogicDelete(0);
        try {
            int result = commandEventMapper.updateByPrimaryKey(commandEventDO);
            if (result == 0) {
                data.put("code",0);
                data.put("msg", "逻辑删除失败!");
                logger.error("逻辑删除失败");
                return data;
            }
            data.put("code", 1);
            data.put("msg", "删除成功！");
            logger.info("事件命令删除[更新]，结果=成功！");
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("事件命令[更新]异常！",e);
            return data;
        }
        return data;
    }
}