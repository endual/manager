package com.haiyu.manager.service;

import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.pojo.dic.AdjustCodeDO;

import java.util.List;
import java.util.Map;


/**
 * 
 *
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
public interface AdjustCodeService  {

    PageDataResult getAdjustCodeList(Integer pageNum, Integer pageSize);

    Map<String,Object> addAdjustCode(AdjustCodeDO adjustCodeDO);

    Map<String, Object> updateAdjustCode(AdjustCodeDO adjustCodeDO);

    List<AdjustCodeDO> adjustCodeList();

    Map<String, Object> del(Integer id);
}

