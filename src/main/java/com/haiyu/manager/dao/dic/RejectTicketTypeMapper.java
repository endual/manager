package com.haiyu.manager.dao.dic;


import com.haiyu.manager.pojo.dic.RejectTicketTypeDO;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

/**
 * 拒绝历史对应的字典表
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Repository
public interface RejectTicketTypeMapper extends Mapper<RejectTicketTypeDO> {
	
}
