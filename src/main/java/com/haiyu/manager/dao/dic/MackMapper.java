package com.haiyu.manager.dao.dic;

import com.haiyu.manager.pojo.dic.MackDO;
import org.apache.ibatis.annotations.Mapper;
import tk.mapper.MyMapper;

/**
 * 消息确认码
 * 
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
@Mapper
public interface MackMapper extends MyMapper<MackDO> {
	
}
