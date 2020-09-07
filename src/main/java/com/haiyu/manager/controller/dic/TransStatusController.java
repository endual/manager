package com.haiyu.manager.controller.dic;

import com.haiyu.manager.pojo.dic.TransStatusDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.TransStatusService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 交易状态
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Controller
@RequestMapping("/transStatus")
public class TransStatusController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TransStatusService transStatusService;

    @RequestMapping("/transStatusManage")
    public String transStatusManage() {
        return "dic/transStatusManage";
    }
    @PostMapping("/getTransStatusList")
    @ResponseBody
    public PageDataResult getTransStatusList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = transStatusService.getTransStatusList(pageNum,pageSize);
            logger.info("交易状态列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("交易状态列表查询异常！", e);
        }
        return pdr;
    }

    /**
     *
     *述: 设置交易状态[新增或更新]
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/12/3 10:54
     */
    @PostMapping("setTransStatus")
    @ResponseBody
    public Map<String,Object> setTransStatus(TransStatusDO transStatusDO) {
        logger.info("设置[交易状态变更]！transStatusDO:" + transStatusDO);
        Map<String,Object> data = new HashMap();
        if(transStatusDO.getId() == null){
            //新增交易状态
            data = transStatusService.addTransStatus(transStatusDO);
        }else{
            //修改交易状态
            data = transStatusService.updateTransStatus(transStatusDO);
        }
        return data;
    }

    /**
     * 功能描述: 获取交易状态列表
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/30 11:35
     */
    @GetMapping("/transStatusList")
    @ResponseBody
    public List<TransStatusDO> transStatusList() {
        logger.info("获取交易状态列表");
        return transStatusService.transStatusList();

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
        return transStatusService.del(id);

    }
}
