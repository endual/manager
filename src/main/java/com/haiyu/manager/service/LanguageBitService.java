package com.haiyu.manager.service;

import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.pojo.dic.LanguageBitDO;

import java.util.List;
import java.util.Map;


/**
 * 车票持有者所偏好使用的语言
 *
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
public interface LanguageBitService  {

    PageDataResult getLanguageBitList(Integer pageNum, Integer pageSize);

    Map<String,Object> addLanguageBit(LanguageBitDO languageBitDO);

    Map<String, Object> updateLanguageBit(LanguageBitDO languageBitDO);

    List<LanguageBitDO> languageBitList();

    Map<String, Object> del(Integer id);
}

