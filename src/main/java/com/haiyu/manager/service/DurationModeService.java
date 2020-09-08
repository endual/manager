package com.haiyu.manager.service;

import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.pojo.dic.DurationModeDO;

import java.util.List;
import java.util.Map;


/**
 * 车票有效期类别
 *
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
public interface DurationModeService  {

    PageDataResult getDurationModeList(Integer pageNum, Integer pageSize);

    Map<String,Object> addDurationMode(DurationModeDO durationModeDO);

    Map<String, Object> updateDurationMode(DurationModeDO durationModeDO);

    List<DurationModeDO> durationModeList();

    Map<String, Object> del(Integer id);
}

