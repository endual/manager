package com.haiyu.manager.dao.dic;

import com.haiyu.manager.pojo.dic.OperatorTypeDO;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

/**
 * 操作员类型表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Repository
public interface OperatorTypeMapper extends Mapper<OperatorTypeDO> {
	
}
