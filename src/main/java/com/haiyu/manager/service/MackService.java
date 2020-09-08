package com.haiyu.manager.service;

import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.pojo.dic.MackDO;

import java.util.List;
import java.util.Map;


/**
 * 消息确认码
 *
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
public interface MackService  {

    PageDataResult getMackList(Integer pageNum, Integer pageSize);

    Map<String,Object> addMack(MackDO mackDO);

    Map<String, Object> updateMack(MackDO mackDO);

    List<MackDO> mackList();

    Map<String, Object> del(Integer id);
}

