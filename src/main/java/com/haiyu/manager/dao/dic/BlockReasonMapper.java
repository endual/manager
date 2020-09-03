package com.haiyu.manager.dao.dic;

import com.haiyu.manager.pojo.dic.BlockReasonDO;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

@Repository
public interface BlockReasonMapper extends Mapper<BlockReasonDO> {

    List<BlockReasonDO> getBlockReasonList();
}
