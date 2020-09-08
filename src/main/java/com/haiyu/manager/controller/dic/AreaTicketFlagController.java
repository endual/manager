package com.haiyu.manager.controller.dic;

import com.haiyu.manager.pojo.dic.AreaTicketFlagDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.AreaTicketFlagService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 车票有效使用范围说明
 *
 * @author lzx
 * @date 2020-09-08 14:54:44
 */
@Controller
@RequestMapping("areaTicketFlag")
public class AreaTicketFlagController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private AreaTicketFlagService areaTicketFlagService;
    @RequestMapping("/areaTicketFlagManage")
    public String areaTicketFlagManage() {
        return "dic/areaTicketFlagManage";
    }

    @PostMapping("/getAreaTicketFlagList")
    @ResponseBody
    public PageDataResult getAreaTicketFlagList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = areaTicketFlagService.getAreaTicketFlagList(pageNum,pageSize);
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
    @PostMapping("setAreaTicketFlag")
    @ResponseBody
    public Map<String,Object> setAreaTicketFlag(AreaTicketFlagDO areaTicketFlagDO) {
        logger.info("设置[变更]！areaTicketFlagDO:" + areaTicketFlagDO);
        Map<String,Object> data = new HashMap();
        if(areaTicketFlagDO.getId() == null){
            //新增
            data = areaTicketFlagService.addAreaTicketFlag(areaTicketFlagDO);
        }else{
            //修改
            data = areaTicketFlagService.updateAreaTicketFlag(areaTicketFlagDO);
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
    @GetMapping("/areaTicketFlagList")
    @ResponseBody
    public List<AreaTicketFlagDO> areaTicketFlagList() {
        logger.info("获取列表");
        return areaTicketFlagService.areaTicketFlagList();

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
        return areaTicketFlagService.del(id);

    }
}
