package com.haiyu.manager.dao.dic;

import com.haiyu.manager.pojo.dic.DurationModeDO;
import org.apache.ibatis.annotations.Mapper;
import tk.mapper.MyMapper;

/**
 * 车票有效期类别
 * 
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
@Mapper
public interface DurationModeMapper extends MyMapper<DurationModeDO> {
	
}
