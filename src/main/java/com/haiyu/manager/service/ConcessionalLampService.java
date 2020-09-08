package com.haiyu.manager.service;

import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.pojo.dic.ConcessionalLampDO;

import java.util.List;
import java.util.Map;


/**
 * 自动检票机灯光显示代码，定义包括灯光显示的颜色、
闪动频率、次数的信息。
 *
 * @author lzx
 * @date 2020-09-08 15:02:08
 */
public interface ConcessionalLampService  {

    PageDataResult getConcessionalLampList(Integer pageNum, Integer pageSize);

    Map<String,Object> addConcessionalLamp(ConcessionalLampDO concessionalLampDO);

    Map<String, Object> updateConcessionalLamp(ConcessionalLampDO concessionalLampDO);

    List<ConcessionalLampDO> concessionalLampList();

    Map<String, Object> del(Integer id);
}

