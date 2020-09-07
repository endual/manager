package com.haiyu.manager.controller.dic;


import com.haiyu.manager.pojo.dic.PsgrTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.PsgrTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 客流类型 
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Controller
@RequestMapping("/psgrType")
public class PsgrTypeController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private PsgrTypeService psgrTypeService;

    @RequestMapping("/psgrTypeManage")
    public String psgrTypeManage() {
        return "dic/psgrTypeManage";
    }
    @PostMapping("/getPsgrTypeList")
    @ResponseBody
    public PageDataResult getPsgrTypeList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = psgrTypeService.getPsgrTypeList(pageNum,pageSize);
            logger.info("客流类型 列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("客流类型 列表查询异常！", e);
        }
        return pdr;
    }
    /**
     *
     *述: 设置客流类型 [新增或更新]
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/12/3 10:54
     */
    @PostMapping("setPsgrType")
    @ResponseBody
    public Map<String,Object> setPsgrType(PsgrTypeDO psgrTypeDO) {
        logger.info("设置[客流类型变更]！psgrTypeDO:" + psgrTypeDO);
        Map<String,Object> data = new HashMap();
        if(psgrTypeDO.getId() == null){
            //新增客流类型
            data = psgrTypeService.addPsgrType(psgrTypeDO);
        }else{
            //修改客流类型
            data = psgrTypeService.updatePsgrType(psgrTypeDO);
        }
        return data;
    }

    /**
     * 功能描述: 获取客流类型 列表
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/30 11:35
     */
    @GetMapping("/psgrTypeList")
    @ResponseBody
    public List<PsgrTypeDO> psgrTypeList() {
        logger.info("获取客流类型列表");
        return psgrTypeService.psgrTypeList();
    }

    /**
     * 功能描述: 删除客流类型 ——逻辑删除
     */
    @PostMapping("del")
    @ResponseBody
    public Map<String, Object> delete(Integer id) {
        logger.info("逻辑删除客流类型 !id:" + id);
        Map<String, Object> data = new HashMap<>();
        //删除服务类目类型
        return psgrTypeService.del(id);

    }

}
