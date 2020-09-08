package com.haiyu.manager.service;

import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.pojo.dic.RealNameTicketTypeDO;

import java.util.List;
import java.util.Map;


/**
 * 实名卡类型

 *
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
public interface RealNameTicketTypeService  {

    PageDataResult getRealNameTicketTypeList(Integer pageNum, Integer pageSize);

    Map<String,Object> addRealNameTicketType(RealNameTicketTypeDO realNameTicketTypeDO);

    Map<String, Object> updateRealNameTicketType(RealNameTicketTypeDO realNameTicketTypeDO);

    List<RealNameTicketTypeDO> realNameTicketTypeList();

    Map<String, Object> del(Integer id);
}

