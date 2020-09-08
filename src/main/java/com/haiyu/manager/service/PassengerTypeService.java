package com.haiyu.manager.service;

import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.pojo.dic.PassengerTypeDO;

import java.util.List;
import java.util.Map;


/**
 * 乘客类型分类
 *
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
public interface PassengerTypeService  {

    PageDataResult getPassengerTypeList(Integer pageNum, Integer pageSize);

    Map<String,Object> addPassengerType(PassengerTypeDO passengerTypeDO);

    Map<String, Object> updatePassengerType(PassengerTypeDO passengerTypeDO);

    List<PassengerTypeDO> passengerTypeList();

    Map<String, Object> del(Integer id);
}

