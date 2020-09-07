package com.haiyu.manager.controller.dic;


import com.haiyu.manager.pojo.dic.OperatorTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.OperatorTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 操作员类型表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Controller
@RequestMapping("/operatorType")
public class OperatorTypeController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private OperatorTypeService operatorTypeService;

        @RequestMapping("/operatorTypeManage")
    public String operatorTypeManage() {
        return "dic/operatorTypeManage";
    }
    @PostMapping("/getOperatorTypeList")
    @ResponseBody
    public PageDataResult getOperatorTypeList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = operatorTypeService.getOperatorTypeList(pageNum,pageSize);
            logger.info("操作员列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("操作员列表查询异常！", e);
        }
        return pdr;
    }
    /**
     *
     *述: 设置操作员类型[新增或更新]
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/12/3 10:54
     */
    @PostMapping("setOperatorType")
    @ResponseBody
    public Map<String,Object> setOperatorType(OperatorTypeDO operatorTypeDO) {
        logger.info("设置[操作员变更]！operatorTypeDO:" + operatorTypeDO);
        Map<String,Object> data = new HashMap();
        if(operatorTypeDO.getId() == null){
            //新增操作员类型
            data = operatorTypeService.addOperatorType(operatorTypeDO);
        }else{
            //修改操作员类型
            data = operatorTypeService.updateOperatorType(operatorTypeDO);
        }
        return data;
    }

    /**
     * 功能描述: 获取操作员类型列表
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/30 11:35
     */
    @GetMapping("/operatorTypeList")
    @ResponseBody
    public List<OperatorTypeDO> operatorTypeList() {
        logger.info("获取操作员列表");
        return operatorTypeService.operatorTypeList();
    }

    /**
     * 功能描述: 删除操作员类型——逻辑删除
     */
    @PostMapping("del")
    @ResponseBody
    public Map<String, Object> delete(Integer id) {
        logger.info("逻辑删除操作员类型!id:" + id);
        Map<String, Object> data = new HashMap<>();
        //删除服务类目类型
        return operatorTypeService.del(id);

    }
}
