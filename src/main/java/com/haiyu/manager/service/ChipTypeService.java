package com.haiyu.manager.service;

import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.pojo.dic.ChipTypeDO;

import java.util.List;
import java.util.Map;


/**
 * 票卡介质芯片类型

 *
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
public interface ChipTypeService  {

    PageDataResult getChipTypeList(Integer pageNum, Integer pageSize);

    Map<String,Object> addChipType(ChipTypeDO chipTypeDO);

    Map<String, Object> updateChipType(ChipTypeDO chipTypeDO);

    List<ChipTypeDO> chipTypeList();

    Map<String, Object> del(Integer id);
}

