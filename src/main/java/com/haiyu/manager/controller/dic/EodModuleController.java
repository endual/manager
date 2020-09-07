package com.haiyu.manager.controller.dic;


import com.haiyu.manager.pojo.dic.EodModuleDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.EodModuleService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 参数模式字典表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Controller
@RequestMapping("/eodModule")
public class EodModuleController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private EodModuleService eodModuleService;

    @RequestMapping("/eodModuleManage")
    public String eodModuleManage() {
        return "dic/eodModuleManage";
    }
    @PostMapping("/getEodModuleList")
    @ResponseBody
    public PageDataResult getEodModuleList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = eodModuleService.getEodModuleList(pageNum,pageSize);
            logger.info("参数模式列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("参数模式列表查询异常！", e);
        }
        return pdr;
    }
    /**
     *
     *述: 设置参数模式[新增或更新]
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/12/3 10:54
     */
    @PostMapping("setEodModule")
    @ResponseBody
    public Map<String,Object> setEodModule(EodModuleDO eodModuleDO) {
        logger.info("设置[参数模式]！eodModuleDO:" + eodModuleDO);
        Map<String,Object> data = new HashMap();
        if(eodModuleDO.getId() == null){
            //新增参数模式
            data = eodModuleService.addEodModule(eodModuleDO);
        }else{
            //修改参数模式
            data = eodModuleService.updateEodModule(eodModuleDO);
        }
        return data;
    }

    /**
     * 功能描述: 获取参数模式列表
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/30 11:35
     */
    @GetMapping("/eodModuleList")
    @ResponseBody
    public List<EodModuleDO> eodModuleList() {
        logger.info("获取参数模式列表");
        return eodModuleService.eodModuleList();

    }
    /**
     * 功能描述: 删除参数模式——逻辑删除
     */
    @PostMapping("del")
    @ResponseBody
    public Map<String, Object> delete(Integer id) {
        logger.info("逻辑删除参数模式!id:" + id);
        Map<String, Object> data = new HashMap<>();
        //删除服务类目类型
        return eodModuleService.del(id);

    }
}
