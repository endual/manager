package com.haiyu.manager.service;


import com.haiyu.manager.pojo.dic.TicketDetailTypeDO;
import com.haiyu.manager.response.PageDataResult;

import java.util.List;
import java.util.Map;

/**
 * 票种明细类型字典表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
public interface TicketDetailTypeService {
    PageDataResult getTicketDetailTypeList(Integer pageNum, Integer pageSize);

    Map<String, Object> addTicketDetailType(TicketDetailTypeDO ticketDetailTypeDO);

    Map<String, Object> updateTicketDetailType(TicketDetailTypeDO ticketDetailTypeDO);

    List<TicketDetailTypeDO> ticketDetailTypeList();

    Map<String, Object> del(Integer id);
}

