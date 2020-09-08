package com.haiyu.manager.controller.dic;


import com.haiyu.manager.dto.TransTypeSearchDTO;
import com.haiyu.manager.pojo.dic.TransTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.TransTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 交易类型字典表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Controller
@RequestMapping("/transType")
public class TransTypeController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TransTypeService transTypeService;

    @RequestMapping("/transTypeManage")
    public String transTypeManage() {
        return "dic/transTypeManage";
    }
    @PostMapping("/getTransTypeList")
    @ResponseBody
    public PageDataResult getTransTypeList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize, TransTypeSearchDTO searchDto) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = transTypeService.getTransTypeList(pageNum,pageSize,searchDto);
            logger.info("交易类型列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("交易类型列表查询异常！", e);
        }
        return pdr;
    }

    /**
     *
     *述: 设置锁卡原因[新增或更新]
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/12/3 10:54
     */
    @PostMapping("setTransType")
    @ResponseBody
    public Map<String,Object> setTransType(TransTypeDO transTypeDO) {
        logger.info("设置[交易类型变更]！transTypeDO:" + transTypeDO);
        Map<String,Object> data = new HashMap();
        if(transTypeDO.getId() == null){
            //新增交易状态
            data = transTypeService.addTransType(transTypeDO);
        }else{
            //修改交易状态
            data = transTypeService.updateTransType(transTypeDO);
        }
        return data;
    }

    /**
     * 功能描述: 获取交易类型列表
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/30 11:35
     */
    @GetMapping("/transTypeList")
    @ResponseBody
    public List<TransTypeDO> transTypeList() {
        logger.info("获取交易类型列表");
        return transTypeService.transTypeList();

    }
    /**
     * 功能描述: 删除交易状态——逻辑删除
     */
    @PostMapping("del")
    @ResponseBody
    public Map<String, Object> delete(Integer id) {
        logger.info("逻辑删除交易状态!id:" + id);
        Map<String, Object> data = new HashMap<>();
        //删除服务类目类型
        return transTypeService.del(id);

    }
}
