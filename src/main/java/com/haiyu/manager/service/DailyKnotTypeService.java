package com.haiyu.manager.service;


import com.haiyu.manager.pojo.dic.DailyKnotTypeDO;
import com.haiyu.manager.response.PageDataResult;

import java.util.List;
import java.util.Map;

/**
 * 日结任务类型字典表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
public interface DailyKnotTypeService  {

    PageDataResult getDailyKnotTypeList(Integer pageNum,Integer pageSize);

    Map<String, Object> addDailyKnotType(DailyKnotTypeDO dailyKnotTypeDO);

    Map<String, Object> updateDailyKnotType(DailyKnotTypeDO dailyKnotTypeDO);

    List<DailyKnotTypeDO> dailyKnotTypeList();

    Map<String, Object> del(Integer id);
}

