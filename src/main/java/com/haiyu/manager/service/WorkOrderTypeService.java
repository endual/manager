package com.haiyu.manager.service;


import com.haiyu.manager.pojo.dic.WorkOrderTypeDO;
import com.haiyu.manager.response.PageDataResult;

import java.util.List;
import java.util.Map;

/**
 * 工单类型字典表。有故障申报工单，采购工单，设备更换工单，设备维修工单，设备维修工单，报废工单，返厂工单等
 *
 * @author chenshun
 * @email sunlightcs@gmail.comL
 * @date 2020-08-27 16:52:22
 */
public interface WorkOrderTypeService {
    PageDataResult getWorkOrderTypeList(Integer pageNum, Integer pageSize);

    Map<String, Object> addWorkOrderType(WorkOrderTypeDO workOrderTypeDO);

    Map<String, Object> updateWorkOrderType(WorkOrderTypeDO workOrderTypeDO);

    List<WorkOrderTypeDO> workOrderTypeList();

    Map<String, Object> del(Integer id);
}

