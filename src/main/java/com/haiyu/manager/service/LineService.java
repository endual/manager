package com.haiyu.manager.service;

import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.pojo.dic.LineDO;

import java.util.List;
import java.util.Map;


/**
 * 线路编号
线路编码是轨道交通各线路在线网中的唯一编号。每条
线路在系统中具有唯一的编码。编码用 BCD 码表示
 *
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
public interface LineService  {

    PageDataResult getLineList(Integer pageNum, Integer pageSize);

    Map<String,Object> addLine(LineDO lineDO);

    Map<String, Object> updateLine(LineDO lineDO);

    List<LineDO> lineList();

    Map<String, Object> del(Integer id);
}

