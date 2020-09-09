package com.haiyu.manager.service;

import com.haiyu.manager.pojo.dic.LandMarkDO;
import com.haiyu.manager.response.PageDataResult;

import java.util.List;
import java.util.Map;


/**
 * 
 *
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
public interface LandMarkService {

    PageDataResult getLandMarkList(Integer pageNum, Integer pageSize);

    Map<String,Object> addLandMark(LandMarkDO landMarkDO);

    Map<String, Object> updateLandMark(LandMarkDO landMarkDO);

    List<LandMarkDO> landMarkList();

    Map<String, Object> del(Integer id);
}

