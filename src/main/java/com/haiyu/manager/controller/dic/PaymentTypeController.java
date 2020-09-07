package com.haiyu.manager.controller.dic;


import com.haiyu.manager.pojo.dic.PaymentTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.PaymentTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 支付类型
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Controller
@RequestMapping("/paymentType")
public class PaymentTypeController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private PaymentTypeService paymentTypeService;

    @RequestMapping("/paymentTypeManage")
    public String paymentTypeManage() {
        return "dic/paymentTypeManage";
    }
    @PostMapping("/getPaymentTypeList")
    @ResponseBody
    public PageDataResult getPaymentTypeList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = paymentTypeService.getPaymentTypeList(pageNum,pageSize);
            logger.info("支付类型列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("支付类型列表查询异常！", e);
        }
        return pdr;
    }

    /**
     *
     *述: 设置支付类型 [新增或更新]
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/12/3 10:54
     */
    @PostMapping("setPaymentType")
    @ResponseBody
    public Map<String,Object> setPaymentType(PaymentTypeDO paymentTypeDO) {
        logger.info("设置[支付类型变更]！paymentTypeDO:" + paymentTypeDO);
        Map<String,Object> data = new HashMap();
        if(paymentTypeDO.getId() == null){
            //新增支付类型
            data = paymentTypeService.addPaymentType(paymentTypeDO);
        }else{
            //修改支付类型
            data = paymentTypeService.updatePaymentType(paymentTypeDO);
        }
        return data;
    }

    /**
     * 功能描述: 获取支付类型 列表
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/30 11:35
     */
    @GetMapping("/paymentTypeList")
    @ResponseBody
    public List<PaymentTypeDO> paymentTypeList() {
        logger.info("获取支付类型列表");
        return paymentTypeService.paymentTypeList();
    }

    /**
     * 功能描述: 删除支付类型 ——逻辑删除
     */
    @PostMapping("del")
    @ResponseBody
    public Map<String, Object> delete(Integer id) {
        logger.info("逻辑删除支付类型 !id:" + id);
        Map<String, Object> data = new HashMap<>();
        //删除服务类目类型
        return paymentTypeService.del(id);
    }
}
