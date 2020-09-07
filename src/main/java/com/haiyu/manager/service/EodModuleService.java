package com.haiyu.manager.service;


import com.haiyu.manager.pojo.dic.EodModuleDO;
import com.haiyu.manager.response.PageDataResult;

import java.util.List;
import java.util.Map;

/**
 * 参数文件字典表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
public interface EodModuleService {

    PageDataResult getEodModuleList(Integer pageNum, Integer pageSize);

    Map<String, Object> addEodModule(EodModuleDO eodModuleDO);

    Map<String, Object> updateEodModule(EodModuleDO eodModuleDO);

    List<EodModuleDO> eodModuleList();

    Map<String, Object> del(Integer id);
}

