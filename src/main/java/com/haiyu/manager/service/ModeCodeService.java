package com.haiyu.manager.service;

import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.pojo.dic.ModeCodeDO;

import java.util.List;
import java.util.Map;


/**
 * 
 *
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
public interface ModeCodeService  {

    PageDataResult getModeCodeList(Integer pageNum, Integer pageSize);

    Map<String,Object> addModeCode(ModeCodeDO modeCodeDO);

    Map<String, Object> updateModeCode(ModeCodeDO modeCodeDO);

    List<ModeCodeDO> modeCodeList();

    Map<String, Object> del(Integer id);
}

