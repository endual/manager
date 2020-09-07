package com.haiyu.manager.service;


import com.haiyu.manager.pojo.dic.PaymentTypeDO;
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
public interface PaymentTypeService {
    PageDataResult getPaymentTypeList(Integer pageNum, Integer pageSize);

    Map<String, Object> addPaymentType(PaymentTypeDO paymentTypeDO);

    Map<String, Object> updatePaymentType(PaymentTypeDO paymentTypeDO);

    List<PaymentTypeDO> paymentTypeList();

    Map<String, Object> del(Integer id);
}

