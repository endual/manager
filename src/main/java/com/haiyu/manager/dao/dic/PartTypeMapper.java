package com.haiyu.manager.dao.dic;

import com.haiyu.manager.pojo.dic.PartTypeDO;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

/**
 * 部件信息编码维护
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Repository
public interface PartTypeMapper extends Mapper<PartTypeDO> {
	
}
