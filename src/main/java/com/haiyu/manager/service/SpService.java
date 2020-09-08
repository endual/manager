package com.haiyu.manager.service;

import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.pojo.dic.SpDO;

import java.util.List;
import java.util.Map;


/**
 * 运营商编号
 *
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
public interface SpService  {

    PageDataResult getSpList(Integer pageNum, Integer pageSize);

    Map<String,Object> addSp(SpDO spDO);

    Map<String, Object> updateSp(SpDO spDO);

    List<SpDO> spList();

    Map<String, Object> del(Integer id);
}

