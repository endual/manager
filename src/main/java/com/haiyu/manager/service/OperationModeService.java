package com.haiyu.manager.service;

import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.pojo.dic.OperationModeDO;

import java.util.List;
import java.util.Map;


/**
 * 
 *
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
public interface OperationModeService  {

    PageDataResult getOperationModeList(Integer pageNum, Integer pageSize);

    Map<String,Object> addOperationMode(OperationModeDO operationModeDO);

    Map<String, Object> updateOperationMode(OperationModeDO operationModeDO);

    List<OperationModeDO> operationModeList();

    Map<String, Object> del(Integer id);
}

