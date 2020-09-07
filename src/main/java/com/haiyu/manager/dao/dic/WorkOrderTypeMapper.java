package com.haiyu.manager.dao.dic;

import com.haiyu.manager.pojo.dic.WorkOrderTypeDO;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

/**
 * 工单类型字典表。有故障申报工单，采购工单，设备更换工单，设备维修工单，设备维修工单，报废工单，返厂工单等
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:22
 */
@Repository
public interface WorkOrderTypeMapper extends Mapper<WorkOrderTypeDO> {

}
