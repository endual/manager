package com.haiyu.manager.service;


import com.haiyu.manager.pojo.dic.OperatorTypeDO;
import com.haiyu.manager.response.PageDataResult;

import java.util.List;
import java.util.Map;


/**
 * 操作员类型表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
public interface OperatorTypeService  {
    PageDataResult getOperatorTypeList(Integer pageNum, Integer pageSize);

    Map<String, Object> addOperatorType(OperatorTypeDO operatorTypeDO);

    Map<String, Object> updateOperatorType(OperatorTypeDO operatorTypeDO);

    List<OperatorTypeDO> operatorTypeList();

    Map<String, Object> del(Integer id);
}

