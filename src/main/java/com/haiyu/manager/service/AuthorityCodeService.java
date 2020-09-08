package com.haiyu.manager.service;

import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.pojo.dic.AuthorityCodeDO;

import java.util.List;
import java.util.Map;


/**
 * 
 *
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
public interface AuthorityCodeService  {

    PageDataResult getAuthorityCodeList(Integer pageNum, Integer pageSize);

    Map<String,Object> addAuthorityCode(AuthorityCodeDO authorityCodeDO);

    Map<String, Object> updateAuthorityCode(AuthorityCodeDO authorityCodeDO);

    List<AuthorityCodeDO> authorityCodeList();

    Map<String, Object> del(Integer id);
}

