package com.haiyu.manager.dao.dic;

import com.haiyu.manager.pojo.dic.DailyKnotTypeDO;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

/**
 * 日结任务类型字典表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Repository
public interface DailyKnotTypeMapper extends Mapper<DailyKnotTypeDO> {
	
}
