package com.haiyu.manager.service;

import com.haiyu.manager.pojo.dic.ArFileTypeDO;
import com.haiyu.manager.response.PageDataResult;

import java.util.List;
import java.util.Map;

public interface ArFileTypeService {
    PageDataResult getArFileTypeList(Integer pageNum, Integer pageSize);

    Map<String,Object> addArFileType(ArFileTypeDO arFileTypeDO);

    Map<String, Object> updateArFileType(ArFileTypeDO arFileTypeDO);
    /**
     *
     * 功能描述: 获取ar文件类型列表
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/30 11:36
     */
    List<ArFileTypeDO> arFileTypeList();

    Map<String, Object> del(Integer id);
}
