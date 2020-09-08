package com.haiyu.manager.dao.dic;

import com.haiyu.manager.pojo.dic.LineDO;
import org.apache.ibatis.annotations.Mapper;
import tk.mapper.MyMapper;

/**
 * 线路编号
线路编码是轨道交通各线路在线网中的唯一编号。每条
线路在系统中具有唯一的编码。编码用 BCD 码表示
 * 
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
@Mapper
public interface LineMapper extends MyMapper<LineDO> {
	
}
