package com.haiyu.manager.dao.dic;

import com.haiyu.manager.pojo.dic.PassengerTypeDO;
import org.apache.ibatis.annotations.Mapper;
import tk.mapper.MyMapper;

/**
 * 乘客类型分类
 * 
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
@Mapper
public interface PassengerTypeMapper extends MyMapper<PassengerTypeDO> {
	
}
