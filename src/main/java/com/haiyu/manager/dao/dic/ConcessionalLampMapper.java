package com.haiyu.manager.dao.dic;

import com.haiyu.manager.pojo.dic.ConcessionalLampDO;
import org.apache.ibatis.annotations.Mapper;
import tk.mapper.MyMapper;

/**
 * 自动检票机灯光显示代码，定义包括灯光显示的颜色、
闪动频率、次数的信息。
 * 
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
@Mapper
public interface ConcessionalLampMapper extends MyMapper<ConcessionalLampDO> {
	
}
