package com.haiyu.manager.dao.dic;

import com.haiyu.manager.pojo.dic.TicketDetailTypeDO;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

/**
 * 票种类型明细类型表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:22
 */
@Repository
public interface TicketDetailTypeMapper extends Mapper<TicketDetailTypeDO> {
}
