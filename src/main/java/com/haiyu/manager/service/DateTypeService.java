package com.haiyu.manager.service;

import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.pojo.dic.DateTypeDO;

import java.util.List;
import java.util.Map;


/**
 * 日期类型
此字段为计算车票费用的输入参数之一

 *
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
public interface DateTypeService  {

    PageDataResult getDateTypeList(Integer pageNum, Integer pageSize);

    Map<String,Object> addDateType(DateTypeDO dateTypeDO);

    Map<String, Object> updateDateType(DateTypeDO dateTypeDO);

    List<DateTypeDO> dateTypeList();

    Map<String, Object> del(Integer id);
}

