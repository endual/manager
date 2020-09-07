package com.haiyu.manager.service;


import com.haiyu.manager.pojo.dic.KeepDataTableDO;
import com.haiyu.manager.response.PageDataResult;

import java.util.List;
import java.util.Map;

/**
 * lc需要保留数据的表。表名。

 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
public interface KeepDataTableService {
    PageDataResult getKeepDataTableList(Integer pageNum, Integer pageSize);

    Map<String, Object> addKeepDataTable(KeepDataTableDO keepDateTableDO);

    Map<String, Object> updateKeepDataTable(KeepDataTableDO keepDateTableDO);

    List<KeepDataTableDO> keepDateTableList();

    Map<String, Object> del(Integer id);
}

