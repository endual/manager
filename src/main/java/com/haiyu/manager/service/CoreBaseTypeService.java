package com.haiyu.manager.service;

import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.pojo.dic.CoreBaseTypeDO;

import java.util.List;
import java.util.Map;


/**
 * 
 *
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
public interface CoreBaseTypeService  {

    PageDataResult getCoreBaseTypeList(Integer pageNum, Integer pageSize);

    Map<String,Object> addCoreBaseType(CoreBaseTypeDO coreBaseTypeDO);

    Map<String, Object> updateCoreBaseType(CoreBaseTypeDO coreBaseTypeDO);

    List<CoreBaseTypeDO> coreBaseTypeList();

    Map<String, Object> del(Integer id);
}

