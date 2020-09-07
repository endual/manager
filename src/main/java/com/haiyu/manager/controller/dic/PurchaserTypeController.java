package com.haiyu.manager.controller.dic;


import com.haiyu.manager.pojo.dic.PurchaserTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.PurchaserTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 采购商信息编码
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Controller
@RequestMapping("/purchaserType")
public class PurchaserTypeController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private PurchaserTypeService purchaserTypeService;

    @RequestMapping("/purchaserTypeManage")
    public String purchaserTypeManage() {
        return "dic/purchaserTypeManage";
    }
    @PostMapping("/getPurchaserTypeList")
    @ResponseBody
    public PageDataResult getPurchaserTypeList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = purchaserTypeService.getPurchaserTypeList(pageNum,pageSize);
            logger.info("采购商信息编码列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("采购商信息编码列表查询异常！", e);
        }
        return pdr;
    }
    /**
     *
     *述: 设置采购商信息编码[新增或更新]
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/12/3 10:54
     */
    @PostMapping("setPurchaserType")
    @ResponseBody
    public Map<String,Object> setPurchaserType(PurchaserTypeDO purchaserTypeDO) {
        logger.info("设置[采购商信息编码]！purchaserTypeDO:" + purchaserTypeDO);
        Map<String,Object> data = new HashMap();
        if(purchaserTypeDO.getId() == null){
            //新增采购商信息编码
            data = purchaserTypeService.addPurchaserType(purchaserTypeDO);
        }else{
            //修改采购商信息编码
            data = purchaserTypeService.updatePurchaserType(purchaserTypeDO);
        }
        return data;
    }

    /**
     * 功能描述: 获取采购商信息编码列表
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/30 11:35
     */
    @GetMapping("/purchaserTypeList")
    @ResponseBody
    public List<PurchaserTypeDO> purchaserTypeList() {
        logger.info("获取采购商信息编码列表");
        return purchaserTypeService.purchaserTypeList();
    }
    /**
     * 功能描述: 删除采购商信息编码——逻辑删除
     */
    @PostMapping("del")
    @ResponseBody
    public Map<String, Object> delete(Integer id) {
        logger.info("逻辑删除采购商信息编码!id:" + id);
        Map<String, Object> data = new HashMap<>();
        //删除服务类目类型
        return purchaserTypeService.del(id);

    }

}
