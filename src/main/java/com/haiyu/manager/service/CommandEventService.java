package com.haiyu.manager.service;


import com.haiyu.manager.response.PageDataResult;

/**
 * 控制命令对应的设备回复事件
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:24
 */
public interface CommandEventService {

    PageDataResult getCommandEventList();
}

