package com.haiyu.manager.dao.dic;

import com.haiyu.manager.pojo.dic.DateTypeDO;
import org.apache.ibatis.annotations.Mapper;
import tk.mapper.MyMapper;

/**
 * 日期类型
此字段为计算车票费用的输入参数之一

 * 
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
@Mapper
public interface DateTypeMapper extends MyMapper<DateTypeDO> {
	
}
