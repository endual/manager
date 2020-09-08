package com.haiyu.manager.service;

import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.pojo.dic.AreaTicketFlagDO;

import java.util.List;
import java.util.Map;


/**
 * 
 *
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
public interface AreaTicketFlagService  {

    PageDataResult getAreaTicketFlagList(Integer pageNum, Integer pageSize);

    Map<String,Object> addAreaTicketFlag(AreaTicketFlagDO areaTicketFlagDO);

    Map<String, Object> updateAreaTicketFlag(AreaTicketFlagDO areaTicketFlagDO);

    List<AreaTicketFlagDO> areaTicketFlagList();

    Map<String, Object> del(Integer id);
}

