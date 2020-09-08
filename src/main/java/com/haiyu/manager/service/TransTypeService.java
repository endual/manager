package com.haiyu.manager.service;


import com.haiyu.manager.dto.TransTypeSearchDTO;
import com.haiyu.manager.pojo.dic.TransTypeDO;
import com.haiyu.manager.response.PageDataResult;

import java.util.List;
import java.util.Map;
/**
 * 交易类型字典表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
public interface TransTypeService {
    PageDataResult getTransTypeList(Integer pageNum, Integer pageSize, TransTypeSearchDTO searchDto);

    Map<String, Object> addTransType(TransTypeDO transTypeDO);

    Map<String, Object> updateTransType(TransTypeDO transTypeDO);

    List<TransTypeDO> transTypeList();

    Map<String, Object> del(Integer id);
}

