package com.haiyu.manager.dao.dic;

import com.haiyu.manager.pojo.dic.TestFlagDO;
import org.apache.ibatis.annotations.Mapper;
import tk.mapper.MyMapper;

/**
 * 票卡测试标志位
 * 
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
@Mapper
public interface TestFlagMapper extends MyMapper<TestFlagDO> {
	
}
