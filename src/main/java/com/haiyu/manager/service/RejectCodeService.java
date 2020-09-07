package com.haiyu.manager.service;


import com.haiyu.manager.pojo.dic.RejectCodeDO;
import com.haiyu.manager.response.PageDataResult;

import java.util.List;
import java.util.Map;

/**
 * 拒绝码字典表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
public interface RejectCodeService {
    PageDataResult getRejectCodeList(Integer pageNum, Integer pageSize);

    Map<String, Object> addRejectCode(RejectCodeDO rejectCodeDO);

    Map<String, Object> updateRejectCode(RejectCodeDO rejectCodeDO);

    List<RejectCodeDO> rejectCodeList();

    Map<String, Object> del(Integer id);
}

