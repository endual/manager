package com.haiyu.manager.service;


import com.haiyu.manager.pojo.dic.TransStatusDO;
import com.haiyu.manager.response.PageDataResult;

import java.util.List;
import java.util.Map;

/**
 * 交易状态
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
public interface TransStatusService {
    PageDataResult getTransStatusList(Integer pageNum, Integer pageSize);

    Map<String, Object> addTransStatus(TransStatusDO transStatusDO);

    Map<String, Object> updateTransStatus(TransStatusDO transStatusDO);

    List<TransStatusDO> transStatusList();

    Map<String, Object> del(Integer id);
}

