package com.haiyu.manager.dao.dic;


import com.haiyu.manager.pojo.dic.ModeCodeDO;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

/**
 * 车站模式 .用于	模式通知/广播（0701）
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Repository
public interface ModeCodeMapper extends Mapper<ModeCodeDO> {
	
}
