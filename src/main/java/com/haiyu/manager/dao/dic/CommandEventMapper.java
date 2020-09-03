package com.haiyu.manager.dao.dic;


import com.haiyu.manager.pojo.dic.CommandEventDO;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

/**
 * 控制命令对应的设备回复事件
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:24
 */
@Repository
public interface CommandEventMapper extends Mapper<CommandEventDO> {
	
}
