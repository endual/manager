package com.haiyu.manager.dao.dic;


import com.haiyu.manager.pojo.dic.TransStatusDO;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

/**
 * 交易状态
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Repository
public interface TransStatusMapper extends Mapper<TransStatusDO> {
	
}
