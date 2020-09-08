package com.haiyu.manager.service;

import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.pojo.dic.TestFlagDO;

import java.util.List;
import java.util.Map;


/**
 * 票卡测试标志位
 *
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
public interface TestFlagService  {

    PageDataResult getTestFlagList(Integer pageNum, Integer pageSize);

    Map<String,Object> addTestFlag(TestFlagDO testFlagDO);

    Map<String, Object> updateTestFlag(TestFlagDO testFlagDO);

    List<TestFlagDO> testFlagList();

    Map<String, Object> del(Integer id);
}

