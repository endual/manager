package com.haiyu.manager.service;


import com.haiyu.manager.pojo.dic.RejectTicketTypeDO;
import com.haiyu.manager.response.PageDataResult;

import java.util.List;
import java.util.Map;

/**
 * 拒绝历史对应的字典表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
public interface RejectTicketTypeService {
    Map<String, Object> addRejectTicketType(RejectTicketTypeDO rejectTicketTypeDO) ;

    Map<String, Object> updateRejectTicketType(RejectTicketTypeDO rejectTicketTypeDO) ;

    List<RejectTicketTypeDO> rejectTicketTypeList() ;

    PageDataResult getRejectTicketTypeList(Integer pageNum, Integer pageSize);

    Map<String, Object> del(Integer id);
}

