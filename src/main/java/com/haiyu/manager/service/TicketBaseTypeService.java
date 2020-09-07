package com.haiyu.manager.service;


import com.haiyu.manager.pojo.dic.TicketBaseTypeDO;
import com.haiyu.manager.response.PageDataResult;

import java.util.List;
import java.util.Map;

/**
 * 票种基本类型字典表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
public interface TicketBaseTypeService {
    PageDataResult getTicketBaseTypeList(Integer pageNum, Integer pageSize);

    Map<String, Object> addTicketBaseType(TicketBaseTypeDO ticketBaseTypeDO);

    Map<String, Object> updateTicketBaseType(TicketBaseTypeDO ticketBaseTypeDO);

    List<TicketBaseTypeDO> ticketBaseTypeList();

    Map<String, Object> del(Integer id);
}

