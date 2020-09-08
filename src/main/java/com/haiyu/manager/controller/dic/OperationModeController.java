package com.haiyu.manager.controller.dic;

import com.haiyu.manager.pojo.dic.OperationModeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.OperationModeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 运营模式编码
 *
 * @author lzx
 * @date 2020-09-08 14:54:44
 */
@Controller
@RequestMapping("operationMode")
public class OperationModeController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private OperationModeService operationModeService;
    @RequestMapping("/operationModeManage")
    public String operationModeManage() {
        return "dic/operationModeManage";
    }

    @PostMapping("/getOperationModeList")
    @ResponseBody
    public PageDataResult getOperationModeList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = operationModeService.getOperationModeList(pageNum,pageSize);
            logger.info("列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("列表查询异常！", e);
        }
        return pdr;
    }
    /**
     *
     *述: 设置[新增或更新]
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/12/3 10:54
     */
    @PostMapping("setOperationMode")
    @ResponseBody
    public Map<String,Object> setOperationMode(OperationModeDO operationModeDO) {
        logger.info("设置[变更]！operationModeDO:" + operationModeDO);
        Map<String,Object> data = new HashMap();
        if(operationModeDO.getId() == null){
            //新增
            data = operationModeService.addOperationMode(operationModeDO);
        }else{
            //修改
            data = operationModeService.updateOperationMode(operationModeDO);
        }
        return data;
    }

    /**
     * 功能描述: 获取列表
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/30 11:35
     */
    @GetMapping("/operationModeList")
    @ResponseBody
    public List<OperationModeDO> operationModeList() {
        logger.info("获取列表");
        return operationModeService.operationModeList();

    }
    /**
     * 功能描述: 删除——逻辑删除
     */
    @PostMapping("del")
    @ResponseBody
    public Map<String, Object> delete(Integer id) {
        logger.info("逻辑删除!id:" + id);
        Map<String, Object> data = new HashMap<>();
        //删除服务类目类型
        return operationModeService.del(id);

    }
}
