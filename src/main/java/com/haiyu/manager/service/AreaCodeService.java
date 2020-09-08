package com.haiyu.manager.service;

import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.pojo.dic.AreaCodeDO;

import java.util.List;
import java.util.Map;


/**
 * 
 *
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
public interface AreaCodeService  {

    PageDataResult getAreaCodeList(Integer pageNum, Integer pageSize);

    Map<String,Object> addAreaCode(AreaCodeDO areaCodeDO);

    Map<String, Object> updateAreaCode(AreaCodeDO areaCodeDO);

    List<AreaCodeDO> areaCodeList();

    Map<String, Object> del(Integer id);
}

