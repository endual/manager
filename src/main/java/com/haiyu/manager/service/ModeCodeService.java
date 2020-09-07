package com.haiyu.manager.service;


import com.haiyu.manager.pojo.dic.ModeCodeDO;
import com.haiyu.manager.response.PageDataResult;

import java.util.List;
import java.util.Map;

/**
 * 车站模式 .用于	模式通知/广播（0701）
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
public interface ModeCodeService {

    PageDataResult getModeCodeList(Integer pageNum, Integer pageSize);

    Map<String, Object> addModeCode(ModeCodeDO modeCodeDO);

    Map<String, Object> updateModeCode(ModeCodeDO modeCodeDO);

    List<ModeCodeDO> modeCodeList();

    Map<String, Object> del(Integer id);
}

