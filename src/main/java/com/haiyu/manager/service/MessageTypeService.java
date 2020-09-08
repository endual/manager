package com.haiyu.manager.service;

import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.pojo.dic.MessageTypeDO;

import java.util.List;
import java.util.Map;


/**
 * 
 *
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
public interface MessageTypeService  {

    PageDataResult getMessageTypeList(Integer pageNum, Integer pageSize);

    Map<String,Object> addMessageType(MessageTypeDO messageTypeDO);

    Map<String, Object> updateMessageType(MessageTypeDO messageTypeDO);

    List<MessageTypeDO> messageTypeList();

    Map<String, Object> del(Integer id);
}

