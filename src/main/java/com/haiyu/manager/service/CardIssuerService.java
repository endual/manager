package com.haiyu.manager.service;


import com.haiyu.manager.pojo.dic.CardIssuerDO;
import com.haiyu.manager.response.PageDataResult;

import java.util.Map;

public interface CardIssuerService {

    PageDataResult getCardIssuerList();

    /**
     *
     * 功能描述: 添加发卡单位
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/30 9:48
     */
    Map<String,Object> addCardIssuer(CardIssuerDO cardIssuerDO);

    /**
     *
     * 功能描述: 修改发卡单位
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/30 9:48
     */
    Map<String,Object> updateCardIssuer(CardIssuerDO cardIssuerDO);
}
