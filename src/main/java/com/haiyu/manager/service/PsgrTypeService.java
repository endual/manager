package com.haiyu.manager.service;

import com.haiyu.manager.pojo.dic.PsgrTypeDO;
import com.haiyu.manager.response.PageDataResult;

import java.util.List;
import java.util.Map;

/**
 * ${comments}
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
public interface PsgrTypeService {

    PageDataResult getPsgrTypeList(Integer pageNum, Integer pageSize);

    Map<String, Object> addPsgrType(PsgrTypeDO psgrTypeDO);

    Map<String, Object> updatePsgrType(PsgrTypeDO psgrTypeDO);

    List<PsgrTypeDO> psgrTypeList();

    Map<String, Object> del(Integer id);
}

