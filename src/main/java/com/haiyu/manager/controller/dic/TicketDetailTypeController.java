package com.haiyu.manager.controller.dic;


import com.haiyu.manager.pojo.dic.TicketDetailTypeDO;
import com.haiyu.manager.response.PageDataResult;
import com.haiyu.manager.service.TicketDetailTypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 票种明细类型字典表
 *
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2020-08-27 16:52:23
 */
@Controller
@RequestMapping("/ticketDetailType")
public class TicketDetailTypeController {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TicketDetailTypeService ticketDetailTypeService;

    @RequestMapping("/ticketDetailTypeManage")
    public String ticketDetailTypeManage() {
        return "dic/ticketDetailTypeManage";
    }
    @PostMapping("/getTicketDetailTypeList")
    @ResponseBody
    public PageDataResult getTicketDetailTypeList
            (@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {

        PageDataResult pdr = new PageDataResult();
        try {
            pdr = ticketDetailTypeService.getTicketDetailTypeList(pageNum,pageSize);
            logger.info("票种明细类型列表查询=pdr:" + pdr);

        } catch (Exception e) {
            e.printStackTrace();
            logger.error("票种明细类型列表查询异常！", e);
        }
        return pdr;
    }

    /**
     *
     *述: 设置票种明细类型[新增或更新]
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/12/3 10:54
     */
    @PostMapping("setTicketDetailType")
    @ResponseBody
    public Map<String,Object> setTicketDetailType(TicketDetailTypeDO ticketDetailTypeDO) {
        logger.info("设置[票种明细类型变更]！ticketDetailTypeDO:" + ticketDetailTypeDO);
        Map<String,Object> data = new HashMap();
        if(ticketDetailTypeDO.getId() == null){
            //新增角色
            data = ticketDetailTypeService.addTicketDetailType(ticketDetailTypeDO);
        }else{
            //修改角色
            data = ticketDetailTypeService.updateTicketDetailType(ticketDetailTypeDO);
        }
        return data;
    }

    /**
     * 功能描述: 获取票种明细类型列表
     *
     * @param:
     * @return:
     * @auther: youqing
     * @date: 2018/11/30 11:35
     */
    @GetMapping("/ticketDetailTypeList")
    @ResponseBody
    public List<TicketDetailTypeDO> ticketDetailTypeList() {
        logger.info("获取票种明细类型列表");
        return ticketDetailTypeService.ticketDetailTypeList();

    }
    /**
     * 功能描述: 删除票种基本类型——逻辑删除
     */
    @PostMapping("del")
    @ResponseBody
    public Map<String, Object> delete(Integer id) {
        logger.info("逻辑删除票种基本类型!id:" + id);
        Map<String, Object> data = new HashMap<>();
        //删除服务类目类型
        return ticketDetailTypeService.del(id);

    }
}
