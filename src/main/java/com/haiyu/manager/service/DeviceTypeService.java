package com.haiyu.manager.service;

import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.pojo.dic.DeviceTypeDO;

import java.util.List;
import java.util.Map;


/**
 * 设备类型，十六进制表示
 *
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
public interface DeviceTypeService  {

    PageDataResult getDeviceTypeList(Integer pageNum, Integer pageSize);

    Map<String,Object> addDeviceType(DeviceTypeDO deviceTypeDO);

    Map<String, Object> updateDeviceType(DeviceTypeDO deviceTypeDO);

    List<DeviceTypeDO> deviceTypeList();

    Map<String, Object> del(Integer id);
}

