package com.haiyu.manager.dao.dic;

import com.haiyu.manager.pojo.dic.LanguageBitDO;
import org.apache.ibatis.annotations.Mapper;
import tk.mapper.MyMapper;

/**
 * 车票持有者所偏好使用的语言
 * 
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
@Mapper
public interface LanguageBitMapper extends MyMapper<LanguageBitDO> {
	
}
