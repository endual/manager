package com.haiyu.manager.service;

import com.haiyu.manager.pojo.dic.BlockReasonDO;
import com.haiyu.manager.response.PageDataResult;

import java.util.List;
import java.util.Map;

public interface BlockReasonService  {
    PageDataResult getBlockReasonList(Integer pageNum,Integer pageSize);

    List<BlockReasonDO> blockReasonList();

    Map<String, Object> addBlockReason(BlockReasonDO blockReasonDO);

    Map<String, Object> updateBlockReason(BlockReasonDO blockReasonDO);

    Map<String, Object> del(Integer id);
}
