package com.haiyu.manager.dao.dic;

import com.haiyu.manager.pojo.dic.RecycleSjtFlagDO;
import org.apache.ibatis.annotations.Mapper;
import tk.mapper.MyMapper;

/**
 * 单程票回收标志
用以记录出站 AGM 是否将当前被正常处理的单程票进行
了回收。

 * 
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
@Mapper
public interface RecycleSjtFlagMapper extends MyMapper<RecycleSjtFlagDO> {
	
}
