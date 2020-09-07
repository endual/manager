package com.haiyu.manager.service;


import com.haiyu.manager.pojo.dic.CommandEventDO;
import com.haiyu.manager.response.PageDataResult;

import java.util.List;
import java.util.Map;

/**
 * 控制命令对应的设备回复事件
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:24
 */
public interface CommandEventService {

    PageDataResult getCommandEventList(Integer pageNum, Integer pageSize);

    List<CommandEventDO> commandEventList();

    Map<String, Object> addCommandEvent(CommandEventDO commandEventDO);

    Map<String, Object> updateCommandEvent(CommandEventDO commandEventDO);

    Map<String, Object> del(Integer id);
}

