package com.haiyu.manager.service;

import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.pojo.dic.TicketStatusDO;

import java.util.List;
import java.util.Map;


/**
 * 票卡状态，十六进制表示
 *
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
public interface TicketStatusService  {

    PageDataResult getTicketStatusList(Integer pageNum, Integer pageSize);

    Map<String,Object> addTicketStatus(TicketStatusDO ticketStatusDO);

    Map<String, Object> updateTicketStatus(TicketStatusDO ticketStatusDO);

    List<TicketStatusDO> ticketStatusList();

    Map<String, Object> del(Integer id);
}

