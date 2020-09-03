package com.haiyu.manager.dao.dic;


import com.haiyu.manager.pojo.dic.KeepdataTableDO;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

/**
 * lc需要保留数据的表。表名。

 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Repository
public interface KeepdataTableMapper extends Mapper<KeepdataTableDO> {
	
}
