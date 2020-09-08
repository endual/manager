package com.haiyu.manager.dao.dic;

import com.haiyu.manager.pojo.dic.DeviceTypeDO;
import org.apache.ibatis.annotations.Mapper;
import tk.mapper.MyMapper;

/**
 * 设备类型，十六进制表示
 * 
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
@Mapper
public interface DeviceTypeMapper extends MyMapper<DeviceTypeDO> {
	
}
