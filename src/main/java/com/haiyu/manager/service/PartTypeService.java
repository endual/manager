package com.haiyu.manager.service;


import com.haiyu.manager.pojo.dic.PartTypeDO;
import com.haiyu.manager.response.PageDataResult;

import java.util.List;
import java.util.Map;

/**
 * 部件信息编码维护
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
public interface PartTypeService {

    PageDataResult getPartTypeList(Integer pageNum, Integer pageSize);

    Map<String, Object> addPartType(PartTypeDO partTypeDO);

    Map<String, Object> updatePartType(PartTypeDO partTypeDO);

    List<PartTypeDO> partTypeList();

    Map<String, Object> del(Integer id);
}

