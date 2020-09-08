package com.haiyu.manager.service;

import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.pojo.dic.RecycleSjtFlagDO;

import java.util.List;
import java.util.Map;


/**
 * 单程票回收标志
用以记录出站 AGM 是否将当前被正常处理的单程票进行
了回收。

 *
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
public interface RecycleSjtFlagService  {

    PageDataResult getRecycleSjtFlagList(Integer pageNum, Integer pageSize);

    Map<String,Object> addRecycleSjtFlag(RecycleSjtFlagDO recycleSjtFlagDO);

    Map<String, Object> updateRecycleSjtFlag(RecycleSjtFlagDO recycleSjtFlagDO);

    List<RecycleSjtFlagDO> recycleSjtFlagList();

    Map<String, Object> del(Integer id);
}

